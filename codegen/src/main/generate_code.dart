import '../input.dart';
import '../models/model_generation.dart';
import '../repository/repository_generation.dart';

Future<void> generateCode(Input input) async {
  for (var model in input.models) {
    await generateModel(model);
  }

  for (var repository in input.repositories) {
    await generateRepository(repository, models: input.models);
  }
}
