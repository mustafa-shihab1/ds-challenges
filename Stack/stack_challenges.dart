import 'stack.dart';

// Challenge 1: Reverse a List
void reverseList<T>(List<T> list) {
  final stack = Stack<T>();
  final reversed = <T>[];
  for (var element in list) {
    stack.push(element);
  }
  while (stack.isNotEmpty) {
    reversed.add(stack.pop());
  }
  print(reversed);
}

// Challenge 2: Balance the Parentheses
bool balancedParentheses(String parentheses) {
  final stack = Stack<String>();
  List<String> splitted = parentheses.split('');
  for (var char in splitted) {
    if (char == '(') {
      stack.push(char);
    } else if (char == ')') {
      if (stack.isEmpty) return false;
      stack.pop();
    }
  }
  return stack.isEmpty;
}

void main() {
  // implementation of Challenge (1)
  List list = ['1', '2', '3', '4', '5'];
  reverseList(list); // [5, 4, 3, 2, 1]

// implementation of Challenge (2)
  print(balancedParentheses('((da(AD))')); // false
  print(balancedParentheses('h((e))llo((w))')); // true
}
