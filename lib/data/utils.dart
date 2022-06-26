abstract class IModel<ID> {
  ID? get id;
}

abstract class IAsyncCrudRepository<ID, T extends IModel<ID>> {
  Future<T> add(T val);

  Future<void> addAll(Iterable<T> val);

  Future<void> update(T val);

  Future<void> updateAll(Iterable<T> val);

  Future<T?> getById(ID id);

  Future<Iterable<T>> getAll();

  Future<bool> delete(T val);

  Future<bool> deleteById(ID id);

  Future<void> deleteAll();
}
