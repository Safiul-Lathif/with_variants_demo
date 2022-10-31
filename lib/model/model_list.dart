class list {
  final String size;
  final String price;
  final String weight;
  String? cost;
  list(
      {required this.size,
      required this.price,
      required this.weight,
      this.cost});

  static list fromJson(json) => list(
      size: json['size'],
      price: json['price'],
      weight: json['weight'],
      cost: json['cost']);
}

List<list> getVariants() {
  const variant = [
    {"size": "8 mm", "price": "70", "weight": "2.5kg", "cost": ""},
    {"size": "10 mm", "price": "69", "weight": "3.5kg", "cost": ""},
    {"size": "12 mm", "price": "69", "weight": "4.5kg", "cost": ""},
    {"size": "16 mm", "price": "69", "weight": "8kg", "cost": ""},
    {"size": "32 mm", "price": "60", "weight": "12.5kg", "cost": ""},
  ];

  return variant.map<list>(list.fromJson).toList();
}
