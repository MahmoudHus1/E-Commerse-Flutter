import 'dummy_data.dart';
import 'rating.dart';

class Product {
  int? id;
  String? title;
  num? price;
  String? description;
  String? category;
  String? image;
  Rating? rating;

  Product.fromMap(Map<String, dynamic> map) {// Named contructor
    id = map['id'];
    title = map['title'];
    description = map['description'];
    price = map['price'];
    category = map['category'];
    image = map['image'];
    category = map['category'];
    rating = Rating(map['rating']);
  }

  static List<Product> convertToList() {
  List<Product> p = [];
  for (var element in data) {
    Product n = Product.fromMap(element);
    p.add(n);
  }
  return p;
}

}
