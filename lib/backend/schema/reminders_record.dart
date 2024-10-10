import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RemindersRecord extends FirestoreRecord {
  RemindersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userRef" field.
  String? _userRef;
  String get userRef => _userRef ?? '';
  bool hasUserRef() => _userRef != null;

  // "notificationTitle" field.
  String? _notificationTitle;
  String get notificationTitle => _notificationTitle ?? '';
  bool hasNotificationTitle() => _notificationTitle != null;

  // "date_end" field.
  DateTime? _dateEnd;
  DateTime? get dateEnd => _dateEnd;
  bool hasDateEnd() => _dateEnd != null;

  // "frequency" field.
  int? _frequency;
  int get frequency => _frequency ?? 0;
  bool hasFrequency() => _frequency != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _userRef = snapshotData['userRef'] as String?;
    _notificationTitle = snapshotData['notificationTitle'] as String?;
    _dateEnd = snapshotData['date_end'] as DateTime?;
    _frequency = castToType<int>(snapshotData['frequency']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('reminders')
          : FirebaseFirestore.instance.collectionGroup('reminders');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('reminders').doc(id);

  static Stream<RemindersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RemindersRecord.fromSnapshot(s));

  static Future<RemindersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RemindersRecord.fromSnapshot(s));

  static RemindersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RemindersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RemindersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RemindersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RemindersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RemindersRecord &&
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
        'userRef': debugSerializeParam(
          userRef,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/med-reminders-9qcana?tab=database',
          name: 'String',
          nullable: false,
        ),
        'notificationTitle': debugSerializeParam(
          notificationTitle,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/med-reminders-9qcana?tab=database',
          name: 'String',
          nullable: false,
        ),
        'date_end': debugSerializeParam(
          dateEnd,
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
        )
      };
}

Map<String, dynamic> createRemindersRecordData({
  String? userRef,
  String? notificationTitle,
  DateTime? dateEnd,
  int? frequency,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userRef': userRef,
      'notificationTitle': notificationTitle,
      'date_end': dateEnd,
      'frequency': frequency,
    }.withoutNulls,
  );

  return firestoreData;
}

class RemindersRecordDocumentEquality implements Equality<RemindersRecord> {
  const RemindersRecordDocumentEquality();

  @override
  bool equals(RemindersRecord? e1, RemindersRecord? e2) {
    return e1?.userRef == e2?.userRef &&
        e1?.notificationTitle == e2?.notificationTitle &&
        e1?.dateEnd == e2?.dateEnd &&
        e1?.frequency == e2?.frequency;
  }

  @override
  int hash(RemindersRecord? e) => const ListEquality()
      .hash([e?.userRef, e?.notificationTitle, e?.dateEnd, e?.frequency]);

  @override
  bool isValidKey(Object? o) => o is RemindersRecord;
}
