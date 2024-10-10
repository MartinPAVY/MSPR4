import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _userDiet = '';
  String get userDiet => _userDiet;
  set userDiet(String value) {
    _userDiet = value;

    debugLogAppState(this);
  }

  late LoggableList<String> _userAllergens = LoggableList([]);
  List<String> get userAllergens =>
      _userAllergens?..logger = () => debugLogAppState(this);
  set userAllergens(List<String> value) {
    if (value != null) {
      _userAllergens = LoggableList(value);
    }

    debugLogAppState(this);
  }

  void addToUserAllergens(String value) {
    userAllergens.add(value);
  }

  void removeFromUserAllergens(String value) {
    userAllergens.remove(value);
  }

  void removeAtIndexFromUserAllergens(int index) {
    userAllergens.removeAt(index);
  }

  void updateUserAllergensAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    userAllergens[index] = updateFn(_userAllergens[index]);
  }

  void insertAtIndexInUserAllergens(int index, String value) {
    userAllergens.insert(index, value);
  }

  late LoggableList<String> _userIngredientDislikes = LoggableList([]);
  List<String> get userIngredientDislikes =>
      _userIngredientDislikes?..logger = () => debugLogAppState(this);
  set userIngredientDislikes(List<String> value) {
    if (value != null) {
      _userIngredientDislikes = LoggableList(value);
    }

    debugLogAppState(this);
  }

  void addToUserIngredientDislikes(String value) {
    userIngredientDislikes.add(value);
  }

  void removeFromUserIngredientDislikes(String value) {
    userIngredientDislikes.remove(value);
  }

  void removeAtIndexFromUserIngredientDislikes(int index) {
    userIngredientDislikes.removeAt(index);
  }

  void updateUserIngredientDislikesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    userIngredientDislikes[index] = updateFn(_userIngredientDislikes[index]);
  }

  void insertAtIndexInUserIngredientDislikes(int index, String value) {
    userIngredientDislikes.insert(index, value);
  }

  Map<String, DebugDataField> toDebugSerializableMap() => {
        'userDiet': debugSerializeParam(
          userDiet,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/med-reminders-9qcana?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=Ch4KFAoIdXNlckRpZXQSCHNvNzVkZDdqcgYIAyoCCgBaCHVzZXJEaWV0',
          name: 'String',
          nullable: false,
        ),
        'userAllergens': debugSerializeParam(
          userAllergens,
          ParamType.String,
          isList: true,
          link:
              'https://app.flutterflow.io/project/med-reminders-9qcana?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=CiUKGQoNdXNlckFsbGVyZ2VucxIIM2ZzaXU2bDVyCBICCAMqAgoAWg11c2VyQWxsZXJnZW5z',
          name: 'String',
          nullable: false,
        ),
        'userIngredientDislikes': debugSerializeParam(
          userIngredientDislikes,
          ParamType.String,
          isList: true,
          link:
              'https://app.flutterflow.io/project/med-reminders-9qcana?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=Ci4KIgoWdXNlckluZ3JlZGllbnREaXNsaWtlcxIIc3ZmYmhxM21yCBICCAMqAgoAWhZ1c2VySW5ncmVkaWVudERpc2xpa2Vz',
          name: 'String',
          nullable: false,
        )
      };
}
