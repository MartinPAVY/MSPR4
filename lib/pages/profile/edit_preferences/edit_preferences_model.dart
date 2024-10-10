import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_appbar_widget.dart';
import '/components/diet_item/diet_item_widget.dart';
import '/components/preference_item/preference_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'edit_preferences_widget.dart' show EditPreferencesWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditPreferencesModel extends FlutterFlowModel<EditPreferencesWidget> {
  ///  Local state fields for this page.

  late LoggableList<String> _allergenSelection = LoggableList([]);
  set allergenSelection(List<String> value) {
    if (value != null) {
      _allergenSelection = LoggableList(value);
    }

    debugLogWidgetClass(this);
  }

  List<String> get allergenSelection =>
      _allergenSelection?..logger = () => debugLogWidgetClass(this);
  void addToAllergenSelection(String item) => allergenSelection.add(item);
  void removeFromAllergenSelection(String item) =>
      allergenSelection.remove(item);
  void removeAtIndexFromAllergenSelection(int index) =>
      allergenSelection.removeAt(index);
  void insertAtIndexInAllergenSelection(int index, String item) =>
      allergenSelection.insert(index, item);
  void updateAllergenSelectionAtIndex(int index, Function(String) updateFn) =>
      allergenSelection[index] = updateFn(allergenSelection[index]);

  String? _dietSelection;
  set dietSelection(String? value) {
    _dietSelection = value;
    debugLogWidgetClass(this);
  }

  String? get dietSelection => _dietSelection;

  late LoggableList<String> _ingredientSelection = LoggableList([]);
  set ingredientSelection(List<String> value) {
    if (value != null) {
      _ingredientSelection = LoggableList(value);
    }

    debugLogWidgetClass(this);
  }

  List<String> get ingredientSelection =>
      _ingredientSelection?..logger = () => debugLogWidgetClass(this);
  void addToIngredientSelection(String item) => ingredientSelection.add(item);
  void removeFromIngredientSelection(String item) =>
      ingredientSelection.remove(item);
  void removeAtIndexFromIngredientSelection(int index) =>
      ingredientSelection.removeAt(index);
  void insertAtIndexInIngredientSelection(int index, String item) =>
      ingredientSelection.insert(index, item);
  void updateIngredientSelectionAtIndex(int index, Function(String) updateFn) =>
      ingredientSelection[index] = updateFn(ingredientSelection[index]);

  ///  State fields for stateful widgets in this page.

  // Model for customAppbar component.
  late CustomAppbarModel customAppbarModel;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Models for dietItem dynamic component.
  Map<String, FlutterFlowModel> dietItemModels = {};
  // Models for preferenceItem dynamic component.
  Map<String, FlutterFlowModel> preferenceItemModels1 = {};
  // Models for preferenceItem dynamic component.
  Map<String, FlutterFlowModel> preferenceItemModels2 = {};

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    customAppbarModel = createModel(context, () => CustomAppbarModel());

    debugLogWidgetClass(this);
  }

  @override
  void dispose() {
    customAppbarModel.dispose();
  }

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        widgetParameters: {
          'page': debugSerializeParam(
            widget?.page,
            ParamType.int,
            link:
                'https://app.flutterflow.io/project/med-reminders-9qcana?tab=uiBuilder&page=EditPreferences',
            searchReference:
                'reference=ShYKDgoEcGFnZRIGcGU3YW9ocgQIASABUAFaBHBhZ2U=',
            name: 'int',
            nullable: true,
          )
        }.withoutNulls,
        localStates: {
          'allergenSelection': debugSerializeParam(
            allergenSelection,
            ParamType.String,
            isList: true,
            link:
                'https://app.flutterflow.io/project/med-reminders-9qcana?tab=uiBuilder&page=EditPreferences',
            searchReference:
                'reference=QiIKGgoRYWxsZXJnZW5TZWxlY3Rpb24SBWZ1YWxmcgQSAggDUAFaEWFsbGVyZ2VuU2VsZWN0aW9uYg9FZGl0UHJlZmVyZW5jZXM=',
            name: 'String',
            nullable: false,
          ),
          'dietSelection': debugSerializeParam(
            dietSelection,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/med-reminders-9qcana?tab=uiBuilder&page=EditPreferences',
            searchReference:
                'reference=Qh4KFgoNZGlldFNlbGVjdGlvbhIFdTc2a2FyBAgDIABQAVoNZGlldFNlbGVjdGlvbmIPRWRpdFByZWZlcmVuY2Vz',
            name: 'String',
            nullable: true,
          ),
          'ingredientSelection': debugSerializeParam(
            ingredientSelection,
            ParamType.String,
            isList: true,
            link:
                'https://app.flutterflow.io/project/med-reminders-9qcana?tab=uiBuilder&page=EditPreferences',
            searchReference:
                'reference=QiYKHAoTaW5ncmVkaWVudFNlbGVjdGlvbhIFY3ppbWlyBhICCAMgAVABWhNpbmdyZWRpZW50U2VsZWN0aW9uYg9FZGl0UHJlZmVyZW5jZXM=',
            name: 'String',
            nullable: false,
          )
        },
        widgetStates: {
          'pageViewCurrentIndex': debugSerializeParam(
            pageViewCurrentIndex,
            ParamType.int,
            link:
                'https://app.flutterflow.io/project/med-reminders-9qcana?tab=uiBuilder&page=EditPreferences',
            name: 'int',
            nullable: true,
          )
        },
        generatorVariables: debugGeneratorVariables,
        backendQueries: debugBackendQueries,
        componentStates: {
          'customAppbarModel (customAppbar)':
              customAppbarModel?.toWidgetClassDebugData(),
          ...widgetBuilderComponents.map(
            (key, value) => MapEntry(
              key,
              value.toWidgetClassDebugData(),
            ),
          ),
        }.withoutNulls,
        dynamicComponentStates: {
          'dietItemModels (List<dietItem>)': DynamicWidgetClassDebugData(
            componentStates: Map.fromIterables(
              List.generate(dietItemModels.length, (index) => '[$index]'),
              dietItemModels.values.map((e) => e.toWidgetClassDebugData()),
            ),
          ),
          'preferenceItemModels1 (List<preferenceItem>)':
              DynamicWidgetClassDebugData(
            componentStates: Map.fromIterables(
              List.generate(
                  preferenceItemModels1.length, (index) => '[$index]'),
              preferenceItemModels1.values
                  .map((e) => e.toWidgetClassDebugData()),
            ),
          ),
          'preferenceItemModels2 (List<preferenceItem>)':
              DynamicWidgetClassDebugData(
            componentStates: Map.fromIterables(
              List.generate(
                  preferenceItemModels2.length, (index) => '[$index]'),
              preferenceItemModels2.values
                  .map((e) => e.toWidgetClassDebugData()),
            ),
          ),
        }.withoutNulls,
        link:
            'https://app.flutterflow.io/project/med-reminders-9qcana/tab=uiBuilder&page=EditPreferences',
        searchReference:
            'reference=Og9FZGl0UHJlZmVyZW5jZXNQAVoPRWRpdFByZWZlcmVuY2Vz',
        widgetClassName: 'EditPreferences',
      );
}
