void main() {
  final List<num> numbers = [5, 56, 15, 77, 19, 24, 99, 31, 105, 150];

  num key = 31;

  final int? index = numbers.linearSearch(key);

  if (index != null) {
    print("Element found at ${index + 1}");
  } else {
    print("$key not found");
  }
}

extension ListSearch<E> on List<E> {
  int? linearSearch(E key) {
    for (int i = 0; i < length; i++) {
      if (this[i] == key) {
        return i;
      }
    }
    return null;
  }
}
