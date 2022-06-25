abstract class IModel<ID> {
  ID? get id;
}

abstract class IAsyncCrudRepository<ID, T extends IModel<ID>> {
  Future<T> add(T val);

  Future<void> addAll(T val);

  Future<void> update(T val);

  Future<void> updateAll(Iterable<T> val);

  Future<T?> getById(ID id);

  Stream<T> getAll();

  Future<T?> delete(T val);

  Future<T?> deleteById(ID id);

  Stream<T> deleteAll();
}
