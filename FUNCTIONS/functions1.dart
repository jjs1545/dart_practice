/**
 * Defining a Function
 */

// String sayHello(String name) {
//   return "Hello $name nice to meet you!";
// }

// // fat arrow syntax
// // String sayHello(String name) => "Hello $name nice to meet you!";
// num plus(num a, num b) => a + b;

// void main() {
//   print(sayHello('Justin'));
// }

/**
 * Named Parameters
 */

// [방법 1] 함수 선언
String sayHello(String name, int age, String country) {
  return "Hello $name, you are $age, and you come from $country";
}

// [방법 2] default값 처리
String sayHello2({
  String name = 'Messi',
  int age = 99,
  String country = 'Argentina',
}) {
  return "Hello $name, you are $age, and you come from $country";
}

// [방법 3] default값 처리
String sayHello3({
  required String name,
  required int age,
  String country = 'S.KOREA',
}) {
  return "Hello $name, you are $age, and you come from $country";
}

void main() {
  // 좋은 방법 x
  // print(sayHello('Justin', 30, 'S.Korea'));

  print(sayHello2(
    age: 30,
  ));

  print(sayHello3(
    age: 31,
    name: 'Justin',
  ));
}
