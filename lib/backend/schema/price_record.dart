import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class PriceRecord extends FirestoreRecord {
  PriceRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "prices" field.
  List<PricesStruct>? _prices;
  List<PricesStruct> get prices => _prices ?? const [];
  bool hasPrices() => _prices != null;

  void _initializeFields() {
    _prices = getStructList(
      snapshotData['prices'],
      PricesStruct.fromMap,
    );
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('price');

  static Stream<PriceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PriceRecord.fromSnapshot(s));

  static Future<PriceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PriceRecord.fromSnapshot(s));

  static PriceRecord fromSnapshot(DocumentSnapshot snapshot) => PriceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PriceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PriceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PriceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PriceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPriceRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class PriceRecordDocumentEquality implements Equality<PriceRecord> {
  const PriceRecordDocumentEquality();

  @override
  bool equals(PriceRecord? e1, PriceRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.prices, e2?.prices);
  }

  @override
  int hash(PriceRecord? e) => const ListEquality().hash([e?.prices]);

  @override
  bool isValidKey(Object? o) => o is PriceRecord;
}
