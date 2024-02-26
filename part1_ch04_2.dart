void main() {
  bool isTrue = true;

  if(isTrue) {
    print('True');
  }

  String text = 'Hello';

  if (text == 'Hello') {
    print('True');
  } else {
    print('False');
  }

  for (int i=0; i<10; i++) {
    print('Running For Index $i');
  }

  /// for (단일 변수 in 컬렉션 (List / Set / Map))
  /// 컬렉션 내에 요소들의 수 / 변수 만큼 사용 될 반복문
  ///

  List<int> indexs = [0, 1, 2, 3, 4, 5];
  for (final index in indexs) { // final 혹은 int로 선언, for in문에서는 int보단 final이 조금 더 편할 수 있다.
    print('Running for Index $index');
  }

  bool isRunning = true;
  int count = 0;
  while(isRunning) {
    if (count >= 5) isRunning = false;
    count++;
    print('while is Running');
  }
}