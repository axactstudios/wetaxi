class City {
  City({
    this.id,
    this.name,
  });

  final int id;
  final String name;

  factory City.fromJson(Map<String, dynamic> json) => City(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
