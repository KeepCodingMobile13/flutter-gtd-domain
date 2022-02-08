import 'package:gtd_domain/src/task_repository.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('Creation & Accessors', () {
    test('Empty repo', () {
      expect(TaskRepository.shared, isNotNull);
      expect(TaskRepository.shared.length, 0);
    });
  });

  group('Mutators', () {
    test('Add: adds to the beginning of the repo', () {});

    test('Insert: adds at the corresponding index', () {});

    test('Remove: removes object if present', () {});

    test('RemoveAt: removes from the corresponding index', () {});

    test('Move: moves elements between valid indexs', () {});
  });
}
