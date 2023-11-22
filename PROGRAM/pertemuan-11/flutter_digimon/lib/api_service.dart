import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  Future getData() async {
    var baseUrl =
        'https://digimon-api.vercel.app/api/digimon'; //endpoint
    var response = await http.get(Uri.parse(baseUrl)); //getresponse

    if (response.statusCode == 200) {
      var data = json.decode(response.body);

      return data['digimon']; //kembalian berupa data
    } else {
      throw Exception('Gagal mengambil data dari server');
    }
  }

  // Future getDetail(String name) async {
  //   var baseUrl =
  //       'https://digimon-api.vercel.app/api/digimon/name/${name}'; //endpoint
  //   var response = await http.get(Uri.parse(baseUrl)); //getresponse

  //   if (response.statusCode == 200) {
  //     var data = json.decode(response.body);

  //     return data['digimon']; //kembalian berupa data
  //   } else {
  //     throw Exception('Gagal mengambil data dari server');
  //   }
  // }
}