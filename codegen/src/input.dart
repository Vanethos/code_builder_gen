class Input {
  final List<Repository> repositories;
  final List<Model> models;

  Input(this.repositories, this.models);
}

class Repository {
  final String name;
  final List<Endpoint> endpoints;

  Repository(
    this.name,
    this.endpoints,
  );
}

enum HttpMethod {
  post,
  put,
  get,
  delete;

  String get name {
    switch (this) {
      case post:
        return 'post';
      case put:
        return 'put';
      case get:
        return 'get';
      case delete:
        return 'delete';
    }
  }
}

class Endpoint {
  final String name;
  final String returnType;
  final Map<String, String>? arguments;
  final String? bodyToJsonType;
  final HttpMethod method;
  final String url;

  Endpoint(
    this.name,
    this.returnType,
    this.method,
    this.url, {
    this.arguments,
    this.bodyToJsonType,
  });
}

class Model {
  final String name;
  final Map<String, String> fields;
  final bool toJson;

  Model(this.name, this.fields, this.toJson);
}
