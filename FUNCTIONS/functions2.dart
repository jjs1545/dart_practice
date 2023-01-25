/**
 * FUNCTIONS - Optional Positional Parameters
 * -> 잘 사용하지 않음 Named Parameters 더 선호
 */

// String sayHello(String name, int age, [String? country = 'cuba']) =>
//     'Hello $name, you are $age years old from $country';

// void main() {
//   var result = sayHello('nico', 12, 'cuba');
//   print(result);
// }

/**
 * QQ Operator
 * -> left ?? right => 만약 left가 null이면 right 출력
 * -? ?=
 */
String capitalizeName(String? name) => name?.toUpperCase() ?? 'ANON';

// String capitalizeName(String? name) =>
//     name != null ? name.toUpperCase() : 'ANON';

// String capitalizeName(String? name) {
//   if (name != null) {
//     return name.toUpperCase();
//   }
//   return 'ANON';
// }

/**
 * Typedef
 */
typedef ListOfInts = List<int>;

// List<int> reverseListOfNumbers(List<int> list) {
//   var reversed = list.reversed;
//   return reversed.toList();
// }

ListOfInts reverseListOfNumbers(List<int> list) {
  var reversed = list.reversed;
  return reversed.toList();
}

void main() {
  capitalizeName('Justin');
  //capitalizeName(null);

  // if(name == null) 이면 'nico' 셋팅
  String? name;
  name ??= 'nico';

  // Typedef
}
