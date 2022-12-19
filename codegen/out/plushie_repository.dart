import 'package:http/http.dart' deferred as http;
import 'dart:convert';
import '../models/plushie';

class PlushieRepository {
  PlushieRepository();

  PlushieEntity getPlushie() {
    return http
        .get(
          Uri.parse(
            'http://myapp.com/getplushie',
          ),
        )
        .then(
          (value) => PlushieEntity.fromJson(
            jsonDecode(value.body),
          ),
        );
  }

  PlushieEntity getPlushie(String name) {
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
