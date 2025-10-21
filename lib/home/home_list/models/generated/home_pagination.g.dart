// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../home_pagination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomePagination _$HomePaginationFromJson(Map<String, dynamic> json) =>
    HomePagination(
      (json['total'] as num?)?.toInt(),
      (json['limit'] as num?)?.toInt(),
    );

Map<String, dynamic> _$HomePaginationToJson(HomePagination instance) =>
    <String, dynamic>{'total': instance.total, 'limit': instance.limit};
