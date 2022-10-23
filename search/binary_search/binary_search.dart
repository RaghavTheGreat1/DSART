// Binary Search
void main() {
  // List of numbers should be in sorted order. In this case, it's ascending.
  List<num> numbersInAscending = [1, 2, 8, 9, 55, 66];

  int length = numbersInAscending.length;
  
  // Index of lower limit of list
  int low = 0;
  
  // Index of upper limit of list
  int high = length - 1;

  // Index of middle point of list
  int mid = (low + high) ~/ 2;

  // Element to search in the list
  double key = 66;

  // boolean check to verify if found.
  bool isFound = false;

  while (low <= high) {
    mid = (low + high) ~/ 2;
    if (numbersInAscending[mid] == key) {
      isFound = true;
      break;
    } else if (key > numbersInAscending[mid]) {
      // Shifts the base to mid + 1 so as to shorten the list to the right part.
      low = mid + 1;
    } else {
      // Shifts the ceil to mid + 1 so as to shorten the list to the left part.
      high = mid - 1;
    }
  }

  if (isFound) {
    print("Element found at ${mid + 1}");
  } else {
    print("$key not found in the list");
  }
}
