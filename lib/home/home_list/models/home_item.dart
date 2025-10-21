import 'package:json_annotation/json_annotation.dart';

part 'generated/home_item.g.dart';

@JsonSerializable()
class HomeItem {
  final int? id;
  final String? title;

  HomeItem(this.id, this.title);

  factory HomeItem.fromJson(Map<String, dynamic> json) => _$HomeItemFromJson(json);

  /// Connect the generated [_$HomeListToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$HomeItemToJson(this);
}