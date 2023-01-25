/**
 * Mixins 
 * -> 생성자가 없는 클래스
 * -> Java 인터페이스와 유사
 */

class Strong {
  final double strengthLevel = 1500.99;
}

class QuickRunner {
  void runQuick() {
    print("ruuuuuuuuuun!");
  }
}

class Tall {
  final double height = 1.99;
}

class Player with Strong, QuickRunner, Tall {}

class Horse with Strong, QuickRunner {}

class Kid with QuickRunner {}

void main() {
  var player = Player();
  player.height;
}
