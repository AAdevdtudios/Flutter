class SchoolOptions{
  final String name;
  final String image;

  SchoolOptions({this.name, this.image});
}

List<SchoolOptions> schoolOptions =[
  SchoolOptions(name: "Specials", image: "images/noodles.jpg"),
  SchoolOptions(name: "Noodles", image: "images/noodles.jpg"),
  SchoolOptions(name: "Bugger", image: "images/Bugger.jpg"),
  SchoolOptions(name: "Cake", image: "images/cake.jpg"),
];

class RestaurantOptions{
  final String name;
  final String image;
  final String rating;
  final String noRating;
  final String type;
  final String popularDish;

  RestaurantOptions({this.type,this.name, this.image,this.rating, this.noRating,this.popularDish, });
}

List<RestaurantOptions> restaurantOptions =[
  RestaurantOptions(name: "Bella",image: "images/noodles.jpg",rating: "4.5",noRating: "124",popularDish: "African Dish",type: "Joint"),
  RestaurantOptions(name: "Dupsy", image: "images/restaurant/dupsy.jpg",rating: "3.5",noRating: "24",popularDish: "Western Dish",type: "Cafe"),
  RestaurantOptions(name: "School Cafe", image: "images/restaurant/schoolCafe.jpg",rating: "3.5",noRating: "24",popularDish: "Western Dish",type: "Cafe"),
  RestaurantOptions(name: "Elegance", image: "images/restaurant/elegance.jpg",rating: "4.5",noRating: "80",popularDish: "Some Dish",type: "Cafe"),
  RestaurantOptions(name: "F.F.O", image: "images/restaurant/ffo.jpg",rating: "3.0",noRating: "30",popularDish: "African Dish",type: "Joint"),
];

class MostPopular{
  final String foodName;
  final String foodImage;
  final String rating;
  final String noRating;
  final String type;
  final String popularDish;

  MostPopular({this.type,this.foodName, this.foodImage,this.rating, this.noRating,this.popularDish, });
}

List<MostPopular> mostPopular =[
  MostPopular(foodName: "Jollof Rice + Spaghetti",foodImage: "images/food/riceSpag.jpg",rating: "4.5",noRating: "124",popularDish: "African Dish",type: "Joint"),
  MostPopular(foodName: "Spaghetti", foodImage: "images/food/s.jpg",rating: "3.5",noRating: "24",popularDish: "Western Dish",type: "Cafe"),
  MostPopular(foodName: "Bugger", foodImage: "images/Bugger.jpg",rating: "4.5",noRating: "80",popularDish: "Some Dish",type: "Cafe"),
  MostPopular(foodName: "Cake", foodImage: "images/food/shawa.jpg",rating: "3.0",noRating: "30",popularDish: "African Dish",type: "Joint"),
];