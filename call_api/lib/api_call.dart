import 'dart:convert';
// import 'dart:html';
import 'package:http/http.dart' as http;

class Users {
  String nama;
  // String almat;
  // String pekerjaan;
  // String password;
  // String id;
  Users({
    required this.nama,
    // required this.almat,
    // required this.pekerjaan,
    // required this.password,
    // required this.id,
  });

  factory Users.fromJson(Map<String, dynamic> json) => Users(
        nama: json["nama"],
        // almat: json["alamat"],
        // pekerjaan: json["pekerjaan"],
        // password: json["password"],
        // id: json["id"],
      );
}

Future<Users> getUsers() async {
  final response = await http.get(Uri.parse('http://localhost/wait/api.php'),
      headers: {
        "Accept": "application/json",
        "Access-Control-Allow-Origin": "*"
      });
  print(response.body);
  print(response.statusCode);
  // print(hasil);

  if (response.statusCode == 200) {
    var hasil = Users.fromJson(jsonDecode(response.body)[0]);
    print("test");
    print(hasil);
    return Users.fromJson(json.decode(response.body)[0]);
  } else {
    throw Exception('GAgal load post');
  }
}

// Future<Users> getUsers(void Function(Object? object) print) async {
//   var url = Uri.parse('http://localhost/wait/api.php');

//   var client = http.Client();
//   final response = await client.get(
//     url,
//     headers: {
//       'Content-Type': 'application/json',
//       'Accept': 'application/json',
//       "Access-Control_Allow_Origin": '*',
//       // 'Authorization': 'Bearer $token',
//       // "Access-Control-Allow-Origin": "*",
//       // "Access-Control-Allow-Credentials": true,
//       // "Access-Control-Allow-Headers":
//       //     "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale",
//       // "Access-Control-Allow-Methods": "POST, OPTIONS"
//     },
//   );

//   if (response.statusCode == 200) {
//     return Users.fromJson(json.decode(response.body)[0]);
//   } else {
//     throw Exception(
//       'Gagal mengambil data mahasiswa! ${response.statusCode}',
//     );
//   }
// }

// Future<Users> getUsers(void print) async {
//   final response = await http.get(Uri.parse('http://12.0.0.2/wait/api.php'),
//       headers: {
//         "Accept": "application/json",
//         "Access-Control-Allow-Origin": "*"
//       });
//   // print(response.body);
//   // print(response.statusCode);

//   if (response.statusCode == 200) {
//     return Users.fromJson(json.decode(response.body)[0]);
//   } else {
//     throw Exception('GAgal load post');
//   }
// }
