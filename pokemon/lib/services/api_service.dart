import 'dart:convert';

import 'package:pokemon/models/poke.dart';
import 'package:http/http.dart' as http;

class ApiService {

  // 네트워크의 응답을 기다리기 위해 리턴타입을 Future 로 바꿔줘야 한다. (async - await)
  // maybe Coroutines suspend?
  static Future<List<Poke>> getTodaysToons() async {
    List<Poke> pokeInstances = [];
    final url = Uri.parse('');

    //await 을 쓰기 위해서는 함수에 async 를 명시해 줘야 한다.
    final response = await http.get(url);
    if (response.statusCode == 200) {
      //jsonDecode 는 dynamic(어떤 타입도 될수 있음)을 반환한다.
      final List<dynamic> pokes = jsonDecode(response.body);
      for (var poke in pokes) {
        final instance = Poke();
        pokeInstances.add(instance);
      }
      //print(webtoonInstances);
      return pokeInstances;
    }
    throw Error();
  }
}
