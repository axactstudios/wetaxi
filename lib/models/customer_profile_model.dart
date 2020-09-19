class CustomerProfileModel {
  CustomerProfileModel({
    this.id,
    this.firstName,
    this.lastName,
    this.fullName,
    this.mobile,
    this.stdCode,
    this.smsMobileNumber,
    this.avatar,
    this.gender,
    this.createdAt,
    this.type,
  });

  String id;
  String firstName;
  String lastName;
  String fullName;
  int mobile;
  int stdCode;
  int smsMobileNumber;
  String avatar;
  String gender;
  DateTime createdAt;
  String type;

  factory CustomerProfileModel.fromJson(Map<String, dynamic> json) =>
      CustomerProfileModel(
        id: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        fullName: json["fullname"],
        mobile: json["mobile"],
        stdCode: json["std_code"],
        smsMobileNumber: json["sms_mobile_number"],
        avatar: json["avatar"],
        gender: json["gender"],
        createdAt: json["created_at"],
        type: json["type"],
      );

  Map<dynamic, dynamic> toJson() => {
        id: "id",
        firstName: "first_name",
        lastName: "last_name",
        fullName: "fullname",
        mobile: 0,
        stdCode: 0,
        smsMobileNumber: 0,
        avatar: "avatar",
        gender: "gender",
        createdAt: 0,
        type: "type",
      };
}
