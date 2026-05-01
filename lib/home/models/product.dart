class Product {
  String? sId;
  String? title;
  String? description;
  String? category;
  double? price;
  String? thumbnail;

  Product({
    this.sId,
    this.title,
    this.description,
    this.category,
    this.price,
    this.thumbnail,
  });

  Product.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    title = json['title'];
    description = json['description'];
    category = json['category'];
    price = json['price'];
    thumbnail = json['thumbnail'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['title'] = this.title;
    data['description'] = this.description;
    data['category'] = this.category;
    data['price'] = this.price;
    data['thumbnail'] = this.thumbnail;
    return data;
  }
}
