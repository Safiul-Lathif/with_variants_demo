class list {
  final String size;
  final String price;
  final String weight;
  const list({required this.size, required this.price, required this.weight});

  static list fromJson(json) => list(
        size: json['size'],
        price: json['price'],
        weight: json['weight'],
      );
}

List<list> getUsers() {
  const variant = [
    {"size": "8 mm", "price": " 70", "weight": "2.5kg"},
    {"size": "10 mm", "price": " 69", "weight": "3.5kg"},
    {"size": "12 mm", "price": " 69", "weight": "4.5kg"},
    {"size": "16 mm", "price": " 69", "weight": "8kg"},
    {"size": "32 mm", "price": " 60", "weight": "12.5kg"},
  ];

  return variant.map<list>(list.fromJson).toList();
}
