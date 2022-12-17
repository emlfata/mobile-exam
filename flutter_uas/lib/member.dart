List<members> data = [
  members(
      name: "Muhammad Emillul Fata",
      desc:
          "NIM: 200605110093\nAsal: Bogor\nHobi: Tidur\nMoto: Tidurlah selagi sempet:) ",
      username: "fata123",
      password: '11',
      profile: "fata123.jpeg",
      email: "muhammademillulfata.16@gmail.com"),
];

class members {
  String name;
  String username;
  String password;
  String profile;
  String desc;
  String email;

  members({
    required this.name,
    required this.username,
    required this.password,
    required this.profile,
    required this.desc,
    required this.email,
  });
}
