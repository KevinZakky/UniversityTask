import 'dart:convert';
import 'package:get/get.dart';
import 'package:latihan_modul3/app/modules/home/models/User.dart';
import 'package:http/http.dart' as http;

class HttpController extends GetxController {
  late Future<User> _futureUser;

  @override
  onInit() {
    super.onInit();
  }

  Future<User> fetchUsers() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/5'));
    if (response.statusCode == 200) {
      return User.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load album');
    }
  }
}
