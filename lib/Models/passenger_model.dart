class Passenger{
  String name;
  var phone;
  int total_trips;
  int cancel_trips;
  Passenger({
    required this.name,
    required this.phone,
    required this.total_trips,
    required this.cancel_trips
});
  factory Passenger.fromJson(Map<String,dynamic> json) => Passenger(
      name: json["name"],
      phone: json["phone"],
      total_trips: json["total trips"],
      cancel_trips: json["cancel trips"]
  );

  Map<String,dynamic> toJson()=>{
    "name":name,
    "phone":phone,
    "total trips":total_trips,
    "cancel trips": cancel_trips,
  };
}