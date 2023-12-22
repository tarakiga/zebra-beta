import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GoodsRecord extends FirestoreRecord {
  GoodsRecord._(
    super.reference,
    super.data,
  ) {
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

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "grade" field.
  String? _grade;
  String get grade => _grade ?? '';
  bool hasGrade() => _grade != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  bool hasStatus() => _status != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _quantity = castToType<int>(snapshotData['quantity']);
    _grade = snapshotData['grade'] as String?;
    _location = snapshotData['location'] as String?;
    _price = castToType<int>(snapshotData['price']);
    _status = snapshotData['status'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('goods');

  static Stream<GoodsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GoodsRecord.fromSnapshot(s));

  static Future<GoodsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GoodsRecord.fromSnapshot(s));

  static GoodsRecord fromSnapshot(DocumentSnapshot snapshot) => GoodsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GoodsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GoodsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GoodsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GoodsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGoodsRecordData({
  String? name,
  String? description,
  int? quantity,
  String? grade,
  String? location,
  int? price,
  bool? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'quantity': quantity,
      'grade': grade,
      'location': location,
      'price': price,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class GoodsRecordDocumentEquality implements Equality<GoodsRecord> {
  const GoodsRecordDocumentEquality();

  @override
  bool equals(GoodsRecord? e1, GoodsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.quantity == e2?.quantity &&
        e1?.grade == e2?.grade &&
        e1?.location == e2?.location &&
        e1?.price == e2?.price &&
        e1?.status == e2?.status;
  }

  @override
  int hash(GoodsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.quantity,
        e?.grade,
        e?.location,
        e?.price,
        e?.status
      ]);

  @override
  bool isValidKey(Object? o) => o is GoodsRecord;
}
