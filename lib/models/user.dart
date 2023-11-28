class User {
  String firstname;
  String lastname;
  String pwd;
  String email;
  DateTime date;
  bool gender;
  User({
    required this.email,
    required this.firstname,
    required this.lastname,
    required this.pwd,
    required this.date,
    required this.gender,
  });
}
