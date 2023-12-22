import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RequestRecord extends FirestoreRecord {
  RequestRecord._(
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

  // "volume" field.
  int? _volume;
  int get volume => _volume ?? 0;
  bool hasVolume() => _volume != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  bool hasStatus() => _status != null;

  // "dueDate" field.
  DateTime? _dueDate;
  DateTime? get dueDate => _dueDate;
  bool hasDueDate() => _dueDate != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _volume = castToType<int>(snapshotData['volume']);
    _address = snapshotData['address'] as String?;
    _status = snapshotData['status'] as bool?;
    _dueDate = snapshotData['dueDate'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('request');

  static Stream<RequestRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RequestRecord.fromSnapshot(s));

  static Future<RequestRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RequestRecord.fromSnapshot(s));

  static RequestRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RequestRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RequestRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RequestRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RequestRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RequestRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRequestRecordData({
  String? name,
  String? description,
  int? volume,
  String? address,
  bool? status,
  DateTime? dueDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'volume': volume,
      'address': address,
      'status': status,
      'dueDate': dueDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class RequestRecordDocumentEquality implements Equality<RequestRecord> {
  const RequestRecordDocumentEquality();

  @override
  bool equals(RequestRecord? e1, RequestRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.volume == e2?.volume &&
        e1?.address == e2?.address &&
        e1?.status == e2?.status &&
        e1?.dueDate == e2?.dueDate;
  }

  @override
  int hash(RequestRecord? e) => const ListEquality().hash(
      [e?.name, e?.description, e?.volume, e?.address, e?.status, e?.dueDate]);

  @override
  bool isValidKey(Object? o) => o is RequestRecord;
}
