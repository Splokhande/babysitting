class Packages{
  String name;
  String cost;
  String description;
  Packages({this.name, this.description, this.cost});
  Packages.fromJson(Map<String,dynamic> data)
  {
    name = data["name"];
    cost = data["cost"];
    description = data["description"];
  }



}

List<Packages>fetchPackages(){
  List<Packages> packageList = [
    Packages.fromJson({
      "name": "One Day Package",
      "cost": "2799",
      "description": "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd"
    }),
    Packages.fromJson({
      "name": "Two Day Package",
      "cost": "5219",
      "description": "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd"
    }),
    Packages.fromJson({
      "name": "Three Day Package",
      "cost": "7497",
      "description": "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd"
    }),
    Packages.fromJson({
      "name": "Four Day Package",
      "cost": "9699",
      "description": "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd"
    }),
    Packages.fromJson({
      "name": "Five Day Package",
      "cost": "11495",
      "description": "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd"
    }),
    Packages.fromJson({
      "name": "Six Day Package",
      "cost": "13925",
      "description": "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd"
    }),
    Packages.fromJson({
      "name": "Weekly Package",
      "cost": "15999",
      "description": "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd"
    }),
    Packages.fromJson({
      "name": "Monthly Package",
      "cost": "75000",
      "description": "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd"
    }),

    Packages.fromJson({
      "name": "Weekend Package",
      "cost": "7497",
      "description": "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd"
    }),

  ];
  return packageList;
}