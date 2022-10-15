import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  Future getData(Uri url) async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      String data = response.body;
      var decodedData = jsonDecode(data);
      return decodedData;
    } else {
      print(response.statusCode);
    }
  }

  Future sendData(Map dataMap, Uri url) async {
    var response = await http.post(url, body: dataMap);
    print('Response status: ${response.statusCode}');
  }
}
