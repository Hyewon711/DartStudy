import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main() {
  /// dart로 만드는 가위바위보
  /// 1. 유저에게 어떤 타입을 낼 것인지 물어보는 질의
  print('가위, 바위, 보 중 하나를 정해서 입력해주세요.');
  final String userInput =
      stdin.readLineSync(encoding: utf8) ?? 'Error'; // 항상 상수이므로 final
  /// 2. 컴퓨터가 낼 타입이 어떤 것인지 결정하는 함수
  const selectList = ['가위', '바위', '보'];
  final cpuInput = selectList[Random().nextInt(3)]; // 3개 중 랜덤으로 선택
  /// 3. 유저의 타입과 컴퓨터 타입에 대한 결과를 계산할 함수
  final result = getResult(userInput, cpuInput);
  print('유저 : $userInput / 컴퓨터 : $cpuInput');
  print(result);
}

/// 결과를 계산할 함수
String getResult(String userInput, String cpuInput) {
  String result;

  const cpuWin = 'CPU가 승리하였습니다.';
  const userWin = '플레이어가 승리하였습니다.';
  const draw = '무승부입니다.';

  switch (userInput) {
    case '가위':
      if (cpuInput == '바위') {
        result = cpuWin;
      } else if (cpuInput == '보') {
        result = userWin;
      } else {
        result = draw;
      }
    case '바위':
      if (cpuInput == '가위') {
        result = userWin;
      } else if (cpuInput == '보') {
        result = cpuWin;
      } else {
        result = draw;
      }
    case '보':
      if (cpuInput == '가위') {
        result = cpuWin;
      } else if (cpuInput == '바위') {
        result = userWin;
      } else {
        result = draw;
      }
    default :
      result = '올바른 값을 입력해주세요.';
  }
  return result;
}
