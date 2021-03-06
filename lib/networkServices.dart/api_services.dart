import 'package:http/http.dart' as http;
import 'package:json_demoo/api/services.dart';
import 'package:json_demoo/modelsl/person_models.dart';

class ApiServices {
  static var _get = http.Client();

  static Future<List<PersonModels>?> getdata() async {
    try {
      var uri = Uri.parse(Json.userData);
      var response = await _get.get(uri);
      if (response.statusCode == 200) {
        return decodePerson(response.body);
      } else {
        return null;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
