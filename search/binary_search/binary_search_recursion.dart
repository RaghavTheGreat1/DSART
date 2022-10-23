void main() {
  final List<num> numbers = [1, 5, 15, 17, 19, 22, 24, 31, 105, 150];

  num key = 31;

  final int? index = numbers.binarySearch(key);

  if (index != null) {
    print("Element found at ${index + 1}");
  } else {
    print("$key not found");
  }
}

extension SortedList on List<num> {
  int? binarySearch(
    /// Key or Element to search
    num key, [

    /// Lower index limit of list
    int? start,

    /// Higher index limit of list
    int? end,
  ]) {
    // Lower index of list
    final int low = start ?? 0;

    // Higher index of list
    final int high = end ?? (length - 1);
    
    // Middle index of list
    final int middle = (low + high) ~/ 2;

    if (low >= high) {
      if (this[middle] == key) {
        return middle;
      } else {
        return null;
      }
    }

    if (this[middle] == key) {
      return middle;
    } else if (key > this[middle]) {
      return binarySearch(key, middle + 1, high);
    } else {
      return binarySearch(key, low, middle - 1);
    }
  }
}
