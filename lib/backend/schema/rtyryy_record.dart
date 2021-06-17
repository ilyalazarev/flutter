import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:latlong/latlong.dart';

import 'schema_util.dart';
import 'serializers.dart';

part 'rtyryy_record.g.dart';

abstract class RtyryyRecord
    implements Built<RtyryyRecord, RtyryyRecordBuilder> {
  static Serializer<RtyryyRecord> get serializer => _$rtyryyRecordSerializer;

  @nullable
  int get test;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(RtyryyRecordBuilder builder) =>
      builder..test = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('rtyryy');

  static Stream<RtyryyRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  RtyryyRecord._();
  factory RtyryyRecord([void Function(RtyryyRecordBuilder) updates]) =
      _$RtyryyRecord;
}

Map<String, dynamic> createRtyryyRecordData({
  int test,
}) =>
    serializers.toFirestore(
        RtyryyRecord.serializer, RtyryyRecord((r) => r..test = test));

RtyryyRecord get dummyRtyryyRecord {
  final builder = RtyryyRecordBuilder()..test = dummyInteger;
  return builder.build();
}

List<RtyryyRecord> createDummyRtyryyRecord({int count}) =>
    List.generate(count, (_) => dummyRtyryyRecord);
