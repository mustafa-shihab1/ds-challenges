class Stack<E> {
  Stack() : _storage = <E>[];
  final List<E> _storage;

  void push(E element) => _storage.add(element);

  E pop() => _storage.removeLast();

  bool get isNotEmpty => _storage.isNotEmpty;

  bool get isEmpty => _storage.isEmpty;
}
