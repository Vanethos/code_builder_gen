import 'dart:io';


import 'src/input.dart';
import 'src/models/models_generation.dart';

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

  await Directory('codegen/out').create();

  await generateModel(model);
}
