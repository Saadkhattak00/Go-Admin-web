class Captains{
 String name;
 var cnic;
 var phone;
 String vehicle_category;
 var vehicle_model;
 String vehicle_color;
 int total_earning;
 int reviews;
Captains({
  required this.name,
  required this.cnic,
  required this.phone,
  required this.vehicle_category,
  required this.vehicle_model,
  required this.vehicle_color,
  required this.total_earning,
  required this.reviews,
});
 factory Captains.fromJson(Map<String,dynamic> json) => Captains(
     name: json["name"],
     cnic:json["cnic"],
     phone:json["phone"],
     vehicle_category: json["vehicle category"],
     vehicle_model: json["vehicle model"],
     vehicle_color: json["vehicle color"],
     total_earning: json["total earning"],
     reviews: json["reviews"]
 );

 Map<String,dynamic> toJson() => {
   "name": name,
   "cnic": cnic,
   "phone": phone,
   "vehicle category": vehicle_category,
   "vehicle model": vehicle_model,
   "vehicle color": vehicle_color,
   "total earning": total_earning,
   "reviews": reviews,
 };


}