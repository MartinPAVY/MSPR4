import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TreatmentRecord extends FirestoreRecord {
  TreatmentRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "begining_date" field.
  DateTime? _beginingDate;
  DateTime? get beginingDate => _beginingDate;
  bool hasBeginingDate() => _beginingDate != null;

  // "end_date" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  bool hasEndDate() => _endDate != null;

  // "frequency" field.
  int? _frequency;
  int get frequency => _frequency ?? 0;
  bool hasFrequency() => _frequency != null;

  // "reminder" field.
  bool? _reminder;
  bool get reminder => _reminder ?? false;
  bool hasReminder() => _reminder != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _beginingDate = snapshotData['begining_date'] as DateTime?;
    _endDate = snapshotData['end_date'] as DateTime?;
    _frequency = castToType<int>(snapshotData['frequency']);
    _reminder = snapshotData['reminder'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('treatment');

  static Stream<TreatmentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TreatmentRecord.fromSnapshot(s));

  static Future<TreatmentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TreatmentRecord.fromSnapshot(s));

  static TreatmentRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TreatmentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TreatmentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TreatmentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TreatmentRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TreatmentRecord &&
      reference.path.hashCode == other.reference.path.hashCode;

  @override
  Map<String, DebugDataField> toDebugSerializableMap() => {
        'reference': debugSerializeParam(
          reference,
          ParamType.DocumentReference,
          link:
              'https://app.flutterflow.io/project/med-reminders-9qcana?tab=database',
          name: '',
          nullable: false,
        ),
        'name': debugSerializeParam(
          name,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/med-reminders-9qcana?tab=database',
          name: 'String',
          nullable: false,
        ),
        'description': debugSerializeParam(
          description,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/med-reminders-9qcana?tab=database',
          name: 'String',
          nullable: false,
        ),
        'begining_date': debugSerializeParam(
          beginingDate,
          ParamType.DateTime,
          link:
              'https://app.flutterflow.io/project/med-reminders-9qcana?tab=database',
          name: 'DateTime',
          nullable: true,
        ),
        'end_date': debugSerializeParam(
          endDate,
          ParamType.DateTime,
          link:
              'https://app.flutterflow.io/project/med-reminders-9qcana?tab=database',
          name: 'DateTime',
          nullable: true,
        ),
        'frequency': debugSerializeParam(
          frequency,
          ParamType.int,
          link:
              'https://app.flutterflow.io/project/med-reminders-9qcana?tab=database',
          name: 'int',
          nullable: false,
        ),
        'reminder': debugSerializeParam(
          reminder,
          ParamType.bool,
          link:
              'https://app.flutterflow.io/project/med-reminders-9qcana?tab=database',
          name: 'bool',
          nullable: false,
        )
      };
}

Map<String, dynamic> createTreatmentRecordData({
  String? name,
  String? description,
  DateTime? beginingDate,
  DateTime? endDate,
  int? frequency,
  bool? reminder,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'begining_date': beginingDate,
      'end_date': endDate,
      'frequency': frequency,
      'reminder': reminder,
    }.withoutNulls,
  );

  return firestoreData;
}

class TreatmentRecordDocumentEquality implements Equality<TreatmentRecord> {
  const TreatmentRecordDocumentEquality();

  @override
  bool equals(TreatmentRecord? e1, TreatmentRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.beginingDate == e2?.beginingDate &&
        e1?.endDate == e2?.endDate &&
        e1?.frequency == e2?.frequency &&
        e1?.reminder == e2?.reminder;
  }

  @override
  int hash(TreatmentRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.beginingDate,
        e?.endDate,
        e?.frequency,
        e?.reminder
      ]);

  @override
  bool isValidKey(Object? o) => o is TreatmentRecord;
}
