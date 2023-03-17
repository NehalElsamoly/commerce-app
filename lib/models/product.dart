class ProductModel {
  String? name;
  String? image;
  String? description;
  int? price;

  ProductModel({
    this.name,
    this.image,
    this.description,
    this.price,
  });

  ProductModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
    description = json['description'];
    price = json['price'];
  }
}
