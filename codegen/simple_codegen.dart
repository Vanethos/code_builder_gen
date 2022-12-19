import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';

void main() async {
  await Directory('codegen/out').create();

  await generateCarBuilder();
}

Future<void> generateCarBuilder() async {
  var file = File('codegen/out/car_builder.dart');
  final directive = Directive.import(
    'package:awesome_app/models/mechanical_builder.dart',
  );

  final output = Library(
    (lib) => lib
      ..directives.add(directive)
      ..body.add(
        getClass(),
      ),
  );

  final emitter = DartEmitter(
    orderDirectives: true,
    allocator: Allocator(),
  );
  await file.writeAsString(
    DartFormatter().format(
      '${output.accept(emitter)}',
    ),
  );
}

Class getClass() => Class(
      (b) => b
        ..name = 'CarBuilder'
        ..extend = refer('MechanicalBuilder')
        ..annotations.add(
          refer(
            'immutable',
            'package:flutter/foundation.dart',
          ),
        )
        ..constructors.add(
          getConstructor(),
        )
        ..fields.addAll(
          getClassFields(),
        )
        ..methods.add(
          getMethod(),
        ),
    );

Constructor getConstructor() => Constructor(
      (b) => b
        ..constant = true
        ..requiredParameters.addAll(
          [
            Parameter(
              (parameter) => parameter
                ..name = 'id'
                ..toSuper = true,
            ),
            Parameter(
              (parameter) => parameter
                ..name = 'manufacturer'
                ..toSuper = true,
            ),
            Parameter(
              (parameter) => parameter
                ..name = 'brand'
                ..toThis = true,
            ),
            Parameter(
              (parameter) => parameter
                ..name = 'color'
                ..toThis = true,
            ),
            Parameter(
              (parameter) => parameter
                ..name = 'isElectric'
                ..toThis = true,
            ),
          ],
        )
        ..optionalParameters.add(
          Parameter(
            (parameter) => parameter
              ..name = 'parts'
              ..toThis = true
              ..named = true,
          ),
        ),
    );

List<Field> getClassFields() => [
      Field(
        (field) => field
          ..name = 'brand'
          ..modifier = FieldModifier.final$
          ..type = refer(
            'String',
          ),
      ),
      Field(
        (field) => field
          ..name = 'color'
          ..modifier = FieldModifier.final$
          ..type = refer(
            'String',
          ),
      ),
      Field(
        (field) => field
          ..name = 'isElectric'
          ..modifier = FieldModifier.final$
          ..type = refer(
            'bool',
          ),
      ),
      Field(
        (field) => field
          ..name = 'parts'
          ..modifier = FieldModifier.final$
          ..type = refer(
            'List<String>?',
          ),
      ),
    ];

Method getMethod() => Method(
      (method) => method
        ..returns = refer(
          'String',
        )
        ..name = 'getOrder'
        ..optionalParameters.add(
          Parameter(
            (p) => p
              ..required = true
              ..named = true
              ..name = 'factory'
              ..type = refer('String'),
          ),
        )
        ..body = getMethodCodeBlock(),
    );

Block getMethodCodeBlock() => Block(
      (block) => block
        ..statements.addAll(
          [
            generateIfBlockStatement(),
            generateReturnStatement(),
          ],
        ),
    );

Code generateIfBlockStatement() => const Code(
      '''if (parts?.isEmpty ?? false) {
      return 'No Order, parts are needed';
    }''',
    );

Code generateReturnStatement() => const Code(
      "return '[\${isElectric ? 'ELECTRIC' : 'COMBUSTION'}] \$factory: \$brand';",
    );
