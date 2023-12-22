import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class CooperativeRecord extends FirestoreRecord {
  CooperativeRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "members" field.
  List<MembersStruct>? _members;
  List<MembersStruct> get members => _members ?? const [];
  bool hasMembers() => _members != null;

  void _initializeFields() {
    _members = getStructList(
      snapshotData['members'],
      MembersStruct.fromMap,
    );
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cooperative');

  static Stream<CooperativeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CooperativeRecord.fromSnapshot(s));

  static Future<CooperativeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CooperativeRecord.fromSnapshot(s));

  static CooperativeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CooperativeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CooperativeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CooperativeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CooperativeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CooperativeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCooperativeRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class CooperativeRecordDocumentEquality implements Equality<CooperativeRecord> {
  const CooperativeRecordDocumentEquality();

  @override
  bool equals(CooperativeRecord? e1, CooperativeRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.members, e2?.members);
  }

  @override
  int hash(CooperativeRecord? e) => const ListEquality().hash([e?.members]);

  @override
  bool isValidKey(Object? o) => o is CooperativeRecord;
}
