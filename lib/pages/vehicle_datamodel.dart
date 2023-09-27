class Vehicle_Number {
  late String vehicle_number;
  late String contact_number;
  late String alternate_contact;
  late String location;

  Vehicle_Number(
      {required this.vehicle_number,
      required this.contact_number,
      required this.location,
      required this.alternate_contact});

  factory Vehicle_Number.fromMap(Map<String, dynamic> map) {
    return Vehicle_Number(
        vehicle_number: map["vehicle_no"],
        contact_number: map["contact_number"],
        location: map["location_name"],
        alternate_contact: map["alternate_contact"]);
  }

  tomap() => {
        "vehicle_no": vehicle_number,
        "contact_number": contact_number,
        "location_name": location,
        "alternate": alternate_contact
      };
}
