void main() {
  print("hello hee ");

  /**
   * String?
   * -> ? : null safety ?가 있으면 널 값 설정 가능 
   */
  // Variables
  String? name = "Hee jung";
  name = null;
  name?.isNotEmpty;

  /**
   * late
   * -> 변수 이름 먼저 설정 후 초기값 나중에 설정
   */
  late final int num;
  // do something, go to api
  num = 5;

  /**
   * const
   * -> compile-time constant
   * -> 컴파일 할 때 알고 있는 값에 사용
   */
  const name2 = "nico";

  /**
   * Recap
   */
}
