import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';

import '../input.dart';

Future<void> generateModel(Model model) async {
  final fileName = '${model.name.toLowerCase()}_entity';

  var file = File('codegen/out/$fileName.dart');

  final output = Library(
    (lib) => lib
    ..directives = ListBuilder(
      [
        Directive.import('package:freezed_annotation/freezed_annotation.dart'),
        Directive.part('${model.name.toLowerCase()}_entity.freezed.dart'),
        Directive.part('${model.name.toLowerCase()}_entity.g.dart'),
      ]
    )
      ..body = ListBuilder(
        [
          Class(
            (b) => b
              ..annotations = ListBuilder([refer('freezed')])
              ..name = '${model.name}Entity'
              ..mixins = ListBuilder([refer('_\$${model.name}Entity')])
              ..constructors = ListBuilder(
                [
                  Constructor(
                    (b) => b
                      ..constant = true
                      ..factory = true
                      ..optionalParameters = ListBuilder(
                        model.fields.keys
                            .map(
                              (e) => Parameter(
                                (b) => b
                                  ..type = refer(model.fields[e]!)
                                  ..named = true
                                  ..required = true
                                  ..name = e,
                              ),
                            )
                            .toList(),
                      )
                      ..redirect = refer(
                        '_${model.name}Entity',
                      ),
                  ),
                  if (model.toJson)
                    Constructor(
                    (b) => b
                      ..name = 'fromJson'
                      ..lambda = true
                      ..factory = true
                      ..requiredParameters = ListBuilder(
                        [
                          Parameter((parameter) => parameter..name = 'json'..type=refer('Map<String, Object?>'))
                        ]
                      )
                      ..body = Code(
                        '_\$${model.name}EntityFromJson(json)',
                      ),
                  ),
                ],
              ),
          ),
        ],
      ),
  );

  final emitter = DartEmitter();
  await file.writeAsString(DartFormatter().format('${output.accept(emitter)}'));
}