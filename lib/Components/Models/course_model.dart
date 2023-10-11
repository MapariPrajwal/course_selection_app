class Course{
  String name;
  String price;
  String imagePath;
  String rating;
  Course({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.rating
  });

  String get _name => name;
  String get _price => price;
  String get _imagePath => imagePath;
  String get _rating => rating;
}
List CourseMenu =[
  Course(name: "Music", price: "INR 200", imagePath: "images/music-app_32.png", rating: "4.3"),
  Course(name: "Dance", price: "INR 500", imagePath: "images/expertise_32.png", rating: "4.2"),
  Course(name: "Engineer", price: "INR 300",imagePath: "images/genetic-engineering.png",rating: "4.1")
];