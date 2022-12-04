# Code Builder Article

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
