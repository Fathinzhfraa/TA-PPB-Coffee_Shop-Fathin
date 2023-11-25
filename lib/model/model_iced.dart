class model_iced {
  int? id;
  String? name;
  String? description;
  String? ingredients;

  model_iced(this.id, this.name, this.description, this.ingredients);

  model_iced.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    ingredients = json['ingredients'];
  }
}
