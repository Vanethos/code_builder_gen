# Code Builder Article

## Running the generater

To run the generator we need to create an `Input` model and give it to the `generateCode`
function isnide `codegen/main.dart`

Then, we need to run:

```
$ dart run codegen/input_codegen.dart
```

To run the simple example we can run:

```
$ dart run codegen/simple_codegen.dart
```

## Plushie Directory API

This Mock API aims to help us make CRUD operations on an API for Plushie
stock management

### Plushie Model

A Plushie is defined as: 

```dart
class Plushie {
    final String id;
    final String name;
    final String manufacturer;
    final List<String> tags;
    /// ...
}
```

### Endpoints

```dart
void createPlushie(Plushie plushie);

Plushie getPlushieById(String id);

void deletePlushie(String id);

List<Plushie> getPlushiesForManufacturer(String manufacturer);
```

## Code Architecture

This application is using [Bloc](https://pub.dev/packages/bloc) as 
a state management solution, and uses the repository pattern to abstract the 
API logic.
