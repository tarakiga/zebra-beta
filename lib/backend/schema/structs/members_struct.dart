// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MembersStruct extends FFFirebaseStruct {
  MembersStruct({
    String? member,
    int? contribution,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _member = member,
        _contribution = contribution,
        super(firestoreUtilData);

  // "member" field.
  String? _member;
  String get member => _member ?? '';
  set member(String? val) => _member = val;
  bool hasMember() => _member != null;

  // "contribution" field.
  int? _contribution;
  int get contribution => _contribution ?? 0;
  set contribution(int? val) => _contribution = val;
  void incrementContribution(int amount) =>
      _contribution = contribution + amount;
  bool hasContribution() => _contribution != null;

  static MembersStruct fromMap(Map<String, dynamic> data) => MembersStruct(
        member: data['member'] as String?,
        contribution: castToType<int>(data['contribution']),
      );

  static MembersStruct? maybeFromMap(dynamic data) =>
      data is Map ? MembersStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'member': _member,
        'contribution': _contribution,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'member': serializeParam(
          _member,
          ParamType.String,
        ),
        'contribution': serializeParam(
          _contribution,
          ParamType.int,
        ),
      }.withoutNulls;

  static MembersStruct fromSerializableMap(Map<String, dynamic> data) =>
      MembersStruct(
        member: deserializeParam(
          data['member'],
          ParamType.String,
          false,
        ),
        contribution: deserializeParam(
          data['contribution'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'MembersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MembersStruct &&
        member == other.member &&
        contribution == other.contribution;
  }

  @override
  int get hashCode => const ListEquality().hash([member, contribution]);
}

MembersStruct createMembersStruct({
  String? member,
  int? contribution,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MembersStruct(
      member: member,
      contribution: contribution,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MembersStruct? updateMembersStruct(
  MembersStruct? members, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    members
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMembersStructData(
  Map<String, dynamic> firestoreData,
  MembersStruct? members,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (members == null) {
    return;
  }
  if (members.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && members.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final membersData = getMembersFirestoreData(members, forFieldValue);
  final nestedData = membersData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = members.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMembersFirestoreData(
  MembersStruct? members, [
  bool forFieldValue = false,
]) {
  if (members == null) {
    return {};
  }
  final firestoreData = mapToFirestore(members.toMap());

  // Add any Firestore field values
  members.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMembersListFirestoreData(
  List<MembersStruct>? memberss,
) =>
    memberss?.map((e) => getMembersFirestoreData(e, true)).toList() ?? [];
