// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../home_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeList _$HomeListFromJson(Map<String, dynamic> json) => HomeList(
  json['pagination'] == null
      ? null
      : HomePagination.fromJson(json['pagination'] as Map<String, dynamic>),
  (json['data'] as List<dynamic>?)
      ?.map((e) => HomeItem.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$HomeListToJson(HomeList instance) => <String, dynamic>{
  'pagination': instance.pagination,
  'data': instance.data,
};
