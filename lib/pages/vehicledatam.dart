class Vehicledetailss {
  late String vehicle_no;
  late String status;
  late String contact_number;
  late String alternate_contact;
  late String location_name;
  late String district;
  late String mandalname;
  late String zone;
  late String emename;
  late String ememobno;
  late String pmname;
  late String pmmobno;
  late String rmname;
  late String rmmobno;

  Vehicledetailss(
      {required this.vehicle_no,
      required this.status,
      required this.contact_number,
      required this.alternate_contact,
      required this.location_name,
      required this.district,
      required this.mandalname,
      required this.zone,
      required this.emename,
      required this.ememobno,
      required this.pmname,
      required this.pmmobno,
      required this.rmname,
      required this.rmmobno});

  factory Vehicledetailss.fromJson(Map<String, dynamic> map) {
    return Vehicledetailss(
        vehicle_no: map["vehicle_no"],
        status: map["status"],
        contact_number: map["contact_number"],
        location_name: map["location_name"],
        alternate_contact: map["alternate_contact"],
        district: map["district"],
        mandalname: map["mandalname"],
        zone: map["zone"],
        emename: map["emename"],
        ememobno: map["ememobno"],
        pmname: map["pmname"],
        pmmobno: map["pmmobno"],
        rmname: map["rmname"],
        rmmobno: map["rmmobno"]);
  }

  tomap() => {
        "vehicle_no": vehicle_no,
        "status": status,
        "contact_number": contact_number,
        "location_name": location_name,
        "alternate_contact": alternate_contact,
        "district": district,
        "mandalname": mandalname,
        "zone": zone,
        "emename": emename,
        "ememobno": ememobno,
        "pmname": pmname,
        "pmmobno": pmmobno,
        "rmname": rmname,
        "rmmobno": rmmobno
      };
}
