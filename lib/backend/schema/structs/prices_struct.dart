// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PricesStruct extends FFFirebaseStruct {
  PricesStruct({
    String? tier,
    int? amount,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _tier = tier,
        _amount = amount,
        super(firestoreUtilData);

  // "tier" field.
  String? _tier;
  String get tier => _tier ?? '';
  set tier(String? val) => _tier = val;
  bool hasTier() => _tier != null;

  // "amount" field.
  int? _amount;
  int get amount => _amount ?? 0;
  set amount(int? val) => _amount = val;
  void incrementAmount(int amount) => _amount = amount + amount;
  bool hasAmount() => _amount != null;

  static PricesStruct fromMap(Map<String, dynamic> data) => PricesStruct(
        tier: data['tier'] as String?,
        amount: castToType<int>(data['amount']),
      );

  static PricesStruct? maybeFromMap(dynamic data) =>
      data is Map ? PricesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'tier': _tier,
        'amount': _amount,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'tier': serializeParam(
          _tier,
          ParamType.String,
        ),
        'amount': serializeParam(
          _amount,
          ParamType.int,
        ),
      }.withoutNulls;

  static PricesStruct fromSerializableMap(Map<String, dynamic> data) =>
      PricesStruct(
        tier: deserializeParam(
          data['tier'],
          ParamType.String,
          false,
        ),
        amount: deserializeParam(
          data['amount'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'PricesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PricesStruct &&
        tier == other.tier &&
        amount == other.amount;
  }

  @override
  int get hashCode => const ListEquality().hash([tier, amount]);
}

PricesStruct createPricesStruct({
  String? tier,
  int? amount,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PricesStruct(
      tier: tier,
      amount: amount,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PricesStruct? updatePricesStruct(
  PricesStruct? prices, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    prices
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPricesStructData(
  Map<String, dynamic> firestoreData,
  PricesStruct? prices,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (prices == null) {
    return;
  }
  if (prices.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && prices.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final pricesData = getPricesFirestoreData(prices, forFieldValue);
  final nestedData = pricesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = prices.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPricesFirestoreData(
  PricesStruct? prices, [
  bool forFieldValue = false,
]) {
  if (prices == null) {
    return {};
  }
  final firestoreData = mapToFirestore(prices.toMap());

  // Add any Firestore field values
  prices.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPricesListFirestoreData(
  List<PricesStruct>? pricess,
) =>
    pricess?.map((e) => getPricesFirestoreData(e, true)).toList() ?? [];
