import 'dart:io';

import 'src/input.dart';
import 'src/main/generate_code.dart';
import 'src/models/model_generation.dart';

void main() async {
  final model = Model(
    'Plushie',
    {
      'id': 'String',
      'name': 'String',
      'manufacturer': 'String',
      'tags': 'List<String>',
    },
    true,
  );

  final repository = Repository(
    'Plushie',
    [
      Endpoint(
        'getPlushies',
        'List<PlushieEntity>',
        HttpMethod.get,
        'http://myapp.com/plushies',
      ),
      Endpoint(
        'createPlushie',
        'PlushieEntity',
        HttpMethod.post,
        'http://myapp.com/createplushie',
        arguments: {
          'name': 'String',
        },
        bodyToJsonType: 'PlushieCreateRequest',
      ),
    ],
  );

  final input = Input([repository], [model]);

  await Directory('codegen/out').create();

  await generateCode(input);
}
