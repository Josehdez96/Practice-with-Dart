import 'package:http/http.dart' as http;

import 'package:paquetes/classes/FetchData.dart';

void fetchDataService() {
  final url = 'https://reqres.in/api/users?page=2';
  http.get(Uri.parse(url)).then((res) {
    final body = fetchDataFromJson(res.body);
    print(fetchDataToJson(body));
  });
}
