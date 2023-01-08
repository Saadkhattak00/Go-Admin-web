class Ride{
  String customer_name;
  String driver_name;
  String vehicle_category;
  var pickup;
  var destination;
  int price;
  double feedback;


  Ride({
    required this.customer_name,
    required this.driver_name,
    required this.vehicle_category,
    required this.pickup,
    required this.destination,
    required this.price,
    required this.feedback,

});

  factory Ride.fromJson(Map<String,dynamic> json) => Ride(
      customer_name: json["Customer Name"],
      driver_name: json["Driver Name"],
      vehicle_category:json ["Vehicle Category"],
      pickup: json["pickup"],
      destination: json["Destination"],
      price:json["Price"],
      feedback: json["feedback"]
  );

  Map<String,dynamic> toJson()=>{
    "Customer Name":customer_name,
    "Driver Name": driver_name,
    "Vehicle Category":vehicle_category,
    "pickup": pickup,
    "Destination": destination,
    "Price":price,
    "feedback":feedback,
  };
}