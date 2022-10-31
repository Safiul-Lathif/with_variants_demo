class list {
  final String size;
  final String price;
  final String weight;
  String? cost;
  String? count;
  list(
      {required this.size,
      required this.price,
      required this.weight,
      this.cost,
      this.count});

  static list fromJson(json) => list(
      size: json['size'],
      price: json['price'],
      weight: json['weight'],
      cost: json['cost'],
      count: json['count']);
}

List<list> getVariants() {
  const variant = [
    {"size": "8 mm", "price": "70", "weight": "2.5kg", "cost": "", "count": ""},
    {
      "size": "10 mm",
      "price": "69",
      "weight": "3.5kg",
      "cost": "",
      "count": ""
    },
    {
      "size": "12 mm",
      "price": "69",
      "weight": "4.5kg",
      "cost": "",
      "count": ""
    },
    {"size": "16 mm", "price": "69", "weight": "8kg", "cost": "", "count": ""},
    {
      "size": "32 mm",
      "price": "60",
      "weight": "12.5kg",
      "cost": "",
      "count": ""
    },
  ];

  return variant.map<list>(list.fromJson).toList();
}
