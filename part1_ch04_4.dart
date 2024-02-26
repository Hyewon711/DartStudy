import 'dart:async';

void main() {
  /// 비동기 프로그래밍
  /// 동기성 / 비동기성
  /// 동기 : 모든 코드가 순차적으로 진행되는 형태
  /// 비동기 : 코드가 동시다발적으로 실행되어서, 순차적으로 보장을 할 수 없는 형태

  /// async / await / Future : Future은 1회만 응답을 돌려받는 경우 (서버 응답)
  /// async* / yield / Stream :Stream은 지속적으로 응답을 돌려받는 경우 (타이머처럼 지속적인 응답)

  todo(3);
  todo(1);
  todo(5);

  todoSecond().listen((event) {});
}

/* 비동기 처리 */
Future<void> todo(int second) async { // async의 경우, Future<리턴타입>이 된다.
  await Future.delayed(Duration(seconds: second)); // 특정 시간동안 지연처리
  print('TODO Done in $second seconds');
}

Stream<int> todoSecond() async* {
  int counter = 0;
  while(counter <= 10) {
    counter++;
    await Future.delayed(Duration(seconds: 1));
    print('TODO is Running $counter');
    yield counter; // return과 비슷하게 값을 반환, 지속적으로 return해준다.
  }
  print('todoSecond is Done');
}
