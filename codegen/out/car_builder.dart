import 'package:awesome_app/models/mechanical_builder.dart';
import 'package:flutter/foundation.dart';

@immutable
class CarBuilder extends MechanicalBuilder {
  const CarBuilder(
    super.id,
    super.manufacturer,
    this.brand,
    this.color,
    this.isElectric, {
    this.parts,
  });

  final String brand;

  final String color;

  final bool isElectric;

  final List<String>? parts;

  String getOrder({required String factory}) {
    if (parts?.isEmpty ?? false) {
      return 'No Order, parts are needed';
    }
    return '[${isElectric ? 'ELECTRIC' : 'COMBUSTION'}] $factory: $brand';
  }
}
