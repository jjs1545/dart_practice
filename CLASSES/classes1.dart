/***
 * [Your First Dart Class]
 * 
 * Class 내의 변수 생성 시 변수 타입 반드시 생성 
 * var -> String
 */

// class Player {
//   String name = 'nico';
//   int xp = 1500;

//   // Method 내의 변수 선언 시 this. 사용 금지 권고
//   void sayHello() {
//     print("Hi my name is $name");
//   }
// }

// void main() {
//   var player = new Player();
//   print(player.name);
//   player.name = 'Justin';
//   print(player.name);
//   player.sayHello();
// }

// #############################################################################

/***
 * 
 * Named Constructor Parameters
 * 
 */

// [Before]
// class Player {
//   late String name;
//   late int xp;

//   Player(String name, int xp) {
//     this.name = name;
//     this.xp = xp;
//   }

//   void sayHello() {
//     print("Hi my name is $name");
//   }
// }

// [After]
class Player {
  String name;
  int xp;
  String team;
  int age;

  Player({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });

  void sayHello() {
    print("Hi my name is $name");
  }
}

void main() {
  var player = Player(
    name: "nico",
    xp: 1500,
    team: 'blue',
    age: 30,
  );

  player.sayHello();

  var player2 = Player(
    name: "Justin",
    xp: 5500,
    team: 'red',
    age: 31,
  );

  player2.sayHello();
}
