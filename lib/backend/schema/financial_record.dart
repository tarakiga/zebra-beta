import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class FinancialRecord extends FirestoreRecord {
  FinancialRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('financial');

  static Stream<FinancialRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FinancialRecord.fromSnapshot(s));

  static Future<FinancialRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FinancialRecord.fromSnapshot(s));

  static FinancialRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FinancialRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FinancialRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FinancialRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FinancialRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FinancialRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFinancialRecordData({
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class FinancialRecordDocumentEquality implements Equality<FinancialRecord> {
  const FinancialRecordDocumentEquality();

  @override
  bool equals(FinancialRecord? e1, FinancialRecord? e2) {
    return e1?.name == e2?.name;
  }

  @override
  int hash(FinancialRecord? e) => const ListEquality().hash([e?.name]);

  @override
  bool isValidKey(Object? o) => o is FinancialRecord;
}
