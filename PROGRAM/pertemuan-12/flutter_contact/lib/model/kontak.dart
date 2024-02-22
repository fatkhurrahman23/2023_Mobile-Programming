class Kontak {
  String? name;
  String? mobileNo;
  String? email;
  String? company;

  Kontak({this.name, this.mobileNo, this.email, this.company});

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'mobileNo': mobileNo,
      'email': email,
      'company': company,
    };
  }

  Map<String, dynamic> toMap() {
        return {
          'name': name,
          'mobileNo': mobileNo,
          'email': email,
          'company': company,
        };
  }

  Kontak.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    mobileNo = json['mobileNo'];
    email = json['email'];
    company = json['company'];
  }
}