/**
 * Constructors Recap
 * -> 실제 Api 데이터 Class로 받아서 변환 해보기
 */
class Player {
  final String name;
  int xp;
  String team;

  // fromJson 문법 각각의 키를 초기화 -> playerJson['name']
  Player.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson['name'],
        xp = playerJson['xp'],
        team = playerJson['team'];

  void sayHello() {
    print("Hi my name is $name");
  }
}

void main() {
  // API 데이터를 Flutter Class로 변환하는 작업 해보기
  var apiData = [
    {
      "name": "nico",
      "team": "red",
      "xp": 0,
    },
    {
      "name": "lynn",
      "team": "blue",
      "xp": 0,
    },
    {
      "name": "dal",
      "team": "green",
      "xp": 0,
    }
  ];

  apiData.forEach((playerJson) {
    var player = Player.fromJson(playerJson);
    player.sayHello();
  });
}
