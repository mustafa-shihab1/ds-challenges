import 'linked_list.dart';

//Challenge 1: Print in Reverse - recursion
void printInReverse<T>(Node<T>? node) {
  if (node == null) return;
  printInReverse(node.next);
  print(node.value);
}

//Challenge 2: Find the Middle Node
Node<E>? middleNode<E>(LinkedList<E> list) {
  var slow = list.head;
  var fast = list.head;
  while (fast != null && fast.next != null) {
    slow = slow!.next;
    fast = fast.next!.next;
  }
  return slow;
}

// Challenge 3: Reverse a Linked List
Node<T>? reversedList<T>(Node<T>? head) {
  Node<T>? current = head;
  Node<T>? prev;
  Node<T>? next;
  while (current != null) {
    next = current.next;
    current.next = prev;
    prev = current;
    current = next;
  }
  return prev;
}

// Challenge 4: Remove All Occurrences
void removeAllOccurrences<T>(LinkedList<T> list, T value) {
  Node<T>? current = list.head;
  Node<T>? prev;
  while (current != null) {
    if (current.value == value) {
      if (prev == null) {
        list.head = current.next;
      } else {
        prev.next = current.next;
      }
    } else {
      prev = current;
    }
    current = current.next;
  }
}

void main() {
  var list1 = LinkedList<int>();
  list1.push(1);
  list1.push(2);
  list1.push(3);
  print('Original List: $list1'); // 3 -> 2 -> 1

  // Implementation of Challenge (1)
  print('Print List In Reverse:');
  printInReverse(list1.head); // 1  2  3

  // Implementation of Challenge (2)
  print('Middle Node: ${middleNode(list1)!.value}'); // 2

  // Implementation of Challenge (3)
  print('Reversed List: ${reversedList(list1.head)}'); // 1 -> 2 -> 3

  // Implementation of Challenge (4)
  var list2 = LinkedList<int>();
  list2.push(8);
  list2.push(7);
  list2.push(5);
  list2.push(6);
  list2.push(5);
  print('Original List-2: $list2'); // 5 -> 6 -> 5 -> 7 -> 8

  print('Remove All Occurrences of 5:');
  removeAllOccurrences(list2, 5); // 6 -> 7 -> 8
  print(list2);
}
