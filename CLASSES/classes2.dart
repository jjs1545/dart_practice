enum Country { Korea, USA }

/**
 * Named Constructors
 */
class Player {
  String name, team;
  int xp, age;
  Country country;

  Player({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
    required this.country,
  });

  // player createBluePlayer Constructor 초기화
  Player.createBluePlayer({
    required String name,
    required int age,
  })  : this.age = age,
        this.name = name,
        this.team = 'blue',
        this.xp = 0,
        this.country = Country.Korea;

  Player.createRedPlayer(String name, int age)
      : this.age = age,
        this.name = name,
        this.team = 'red',
        this.xp = 0,
        this.country = Country.USA;

  void sayHello() {
    print("Hi my name is $name");
  }
}

void main() {
  var player = Player.createBluePlayer(
    name: 'nico',
    age: 21,
  );

  var redPlayer = Player.createRedPlayer('nico', 21);

  /**
   * Cascade Notation
   * -> 변수(name, xp, team, age)를 변경
   */

  // 1. Casecade Notation 사용 X
  // var nico = Player(
  //   name: 'name',
  //   xp: 1200,
  //   team: 'red',
  //   age: 30,
  // );

  // nico.name = 'Justin';
  // nico.xp = 500000;
  // nico.team = 'blue';

  // 2. Casecade Notation 사용 O
  var nico = Player(
    name: 'name',
    xp: 1200,
    team: 'red',
    age: 30,
    country: Country.Korea,
  )
    ..name = 'Justin'
    ..xp = 500000
    ..team = 'blue'
    ..sayHello();

  /**
   * Enums -> 개발자 실수를 줄여준다.
   */
}
