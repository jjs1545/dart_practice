/**
 * Abstract Classes
 * -> 메소드의 이름과 반환 타입만 정해서 정의 가능
 */

// abstract class Human {
//   void walk();
// }

// class Player extends Human {
//   void walk() {
//     print("I`m walking");
//   }
// }

// void main() {}

/**
 *  Inheritance(상속)
 *  -> Flutter에서는 가끔 사용
 */
class Human {
  final String name;
  Human({required this.name});

  void sayHello() {
    print("Hi my name is $name");
  }
}

enum Team { blue, red }

class Player extends Human {
  final Team team;

  Player({
    required this.team,
    required String name,
  }) : super(name: name);

  @override
  void sayHello() {
    super.sayHello();
    print("and I play for ${team}");
  }
}

void main() {
  var player = Player(
    team: Team.red,
    name: 'nico',
  );

  player.sayHello();
}
