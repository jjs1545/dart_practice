void main() {
  /**
   * Basic Data Types
   * num 자료형
   */

  String name = "nico";
  bool alive = true;
  int age = 12;
  double money = 17.4;

  num x = 12;
  x = 1.1;

  /**
   * Lists
   */
  var giveMeFive = true;
  var numbers = [
    1,
    2,
    3,
    4,
    if (giveMeFive) 5, // giveMeFive가 true면 numbers 리스트에 5 추가
  ];

  print(numbers);
  //List<int> numbers = [1, 2, 3, 4];
  numbers.add(5);

  /**
   * String Interpolation
   * -> text에 변수 추가
   */
  var name1 = 'nico';
  var age1 = 20;
  var greeting = "Hello everyone, my name is $name1 and I`m ${age1 + 10}";
  print(greeting);

  /**
   * Collection for
   */
  var oldFriends = ['nico', 'lynn'];
  var newFriends = [
    'lewis',
    'ralph',
    'darren',
    for (var friend in oldFriends) "♥$friend",
  ];

  print(newFriends);

  /**
   * Maps
   * -> Map도 좋지만 Api 데이터는 Dart에서 주로 Class로 받아온다.
   */
  var player = {
    'name': 'nico',
    'xp': 19.99,
    'superpower': false,
  };

  Map<int, bool> player2 = {1: true, 2: false, 3: true};

  Map<List<int>, bool> player3 = {
    [1, 2, 3, 5]: true,
  };

  List<Map<String, Object>> playes = [
    {'name': 'nico', 'xp': 199993.999},
    {'name': 'nico', 'xp': 199993.999}
  ];

  /**
   * Sets
   */
  var numbers1 = {1, 2, 3, 4};
  //Set<int> numbers1 = {1, 2, 3, 4};
  numbers1.add(1);
  numbers1.add(1);
  numbers1.add(1);

  print("numbers $numbers1");
}
