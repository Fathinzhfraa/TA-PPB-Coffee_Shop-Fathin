class model_hot {
  int? id;
  String? name;
  String? description;
  String? ingredients;

  model_hot(this.id, this.name, this.description, this.ingredients);

  model_hot.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    ingredients = json['ingredients'];
  }
}
