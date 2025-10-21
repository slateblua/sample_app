import 'package:json_annotation/json_annotation.dart';
import 'home_item.dart';
import 'home_pagination.dart';

part 'generated/home_list.g.dart';

@JsonSerializable()
class HomeList {
  HomePagination? pagination;
  List<HomeItem>? data;

  HomeList(this.pagination, this.data);

  factory HomeList.fromJson(Map<String, dynamic> json) => _$HomeListFromJson(json);

  /// Connect the generated [_$HomeListToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$HomeListToJson(this);
}