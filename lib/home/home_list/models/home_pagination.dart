import 'package:json_annotation/json_annotation.dart';

part 'generated/home_pagination.g.dart';

@JsonSerializable()
class HomePagination {
  final int? total;
  final int? limit;

  HomePagination(this.total, this.limit);

  factory HomePagination.fromJson(Map<String, dynamic> json) => _$HomePaginationFromJson(json);

  /// Connect the generated [_$HomeListToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$HomePaginationToJson(this);
}