import 'package:hive/hive.dart';
part 'cart_model.g.dart';
@HiveType(typeId: 1)
class CartModel {
  @HiveField(0)
  final String imgUrl;
  @HiveField(1)
  final String text;
  @HiveField(2)
  final String? details;
  @HiveField(3)
  int qty;
  @HiveField(4)
  int counter;
  @HiveField(6)
  final int? offer;
  @HiveField(7)
  final int price;
  @HiveField(8)
  final String? rating;
  @HiveField(9)
  final String? star;
  @HiveField(10)
  final int index;

  @HiveField(11)
  CartModel({
    this.counter = 0,
    required this.imgUrl,
    required this.text,
    this.details,
    this.qty = 1,
    this.offer,
    required this.price,
    this.rating,
    required this.index,
    this.star,
  });
}
