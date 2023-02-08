import 'package:http/http.dart' deferred as http;
import 'dart:convert';
import '../models/plushie';

class PlushieRepository {
  PlushieRepository();

  Future<List<PlushieEntity>> getPlushies() async {
    return http
        .get(
          Uri.parse(
            'http://myapp.com/plushies',
          ),
        )
        .then(
          (value) => List<PlushieEntity>.fromJson(
            jsonDecode(value.body)
                .map((item) => List<PlushieEntity>.fromJson(item))
                .toList(),
          ),
        );
  }

  Future<PlushieEntity> createPlushie(String name) async {
    return http
        .post(
          Uri.parse(
            'http://myapp.com/createplushie',
          ),
          body: PlushieCreateRequest(name: String).toJson(),
        )
        .then(
          (value) => PlushieEntity.fromJson(
            jsonDecode(value.body),
          ),
        );
  }
}
