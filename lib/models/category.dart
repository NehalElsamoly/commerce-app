class CategoryModel {
  String? name;
  String? image;

  CategoryModel({
    this.name,
    this.image,
  });

  CategoryModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
  }
}
