// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(dio)
final dioProvider = DioProvider._();

final class DioProvider extends $FunctionalProvider<Dio, Dio, Dio>
    with $Provider<Dio> {
  DioProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dioProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dioHash();

  @$internal
  @override
  $ProviderElement<Dio> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Dio create(Ref ref) {
    return dio(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Dio value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Dio>(value),
    );
  }
}

String _$dioHash() => r'a03da399b44b3740dc4fcfc6716203041d66ff01';

@ProviderFor(todoApi)
final todoApiProvider = TodoApiProvider._();

final class TodoApiProvider
    extends $FunctionalProvider<TodoApi, TodoApi, TodoApi>
    with $Provider<TodoApi> {
  TodoApiProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'todoApiProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$todoApiHash();

  @$internal
  @override
  $ProviderElement<TodoApi> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  TodoApi create(Ref ref) {
    return todoApi(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TodoApi value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TodoApi>(value),
    );
  }
}

String _$todoApiHash() => r'fccf51d4db6ffa9f21f8449e01bb8c797976c6eb';

@ProviderFor(todoRepository)
final todoRepositoryProvider = TodoRepositoryProvider._();

final class TodoRepositoryProvider
    extends $FunctionalProvider<TodoRepository, TodoRepository, TodoRepository>
    with $Provider<TodoRepository> {
  TodoRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'todoRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$todoRepositoryHash();

  @$internal
  @override
  $ProviderElement<TodoRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  TodoRepository create(Ref ref) {
    return todoRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TodoRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TodoRepository>(value),
    );
  }
}

String _$todoRepositoryHash() => r'9bd79ac22a80920ae97c90c5bb432d70fca03745';

@ProviderFor(todos)
final todosProvider = TodosProvider._();

final class TodosProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<TodoEntity>>,
          List<TodoEntity>,
          FutureOr<List<TodoEntity>>
        >
    with $FutureModifier<List<TodoEntity>>, $FutureProvider<List<TodoEntity>> {
  TodosProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'todosProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$todosHash();

  @$internal
  @override
  $FutureProviderElement<List<TodoEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<TodoEntity>> create(Ref ref) {
    return todos(ref);
  }
}

String _$todosHash() => r'8242a264af7f92d3a024ce8d1e07be4d2b3da903';
