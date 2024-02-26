void main() {
  /// 예외처리 : 프로그램이 진행중일 때, 의도하였거나 의도하지 않은 상황에 대해서
  /// 프로그램적으로 오류가 발생했을 때, 대처하는 방법
  /// try - catch 문 : 가장 기본적인 예외처리
  /// finally 문
  /// on 문
  /// throw / rethrow 문

  /// try - catch, finally
  int num1 = 10;
  try {
    print(10 ~/ 0);
  } catch(error, stack) {
    print(error);
    print(stack);
  } finally {
    /// 예외가 발생하든 안하든 try문 / catch문 이후 실행하고자 하는 코드
    print('예외처리문 완료');
  }

  /// on, throw, rethrow
  try {
    print(10 ~/ 0);
    throw Exception('Unknown Error');
  } on UnsupportedError catch(e, s) {
    print('~/ 해당 연산자는 0으로 나눌 수 없습니다.');
  } on TypeError catch (e, s) {
    print('Null 값이 참조되었습니다.');
  } catch (e, s) {
    rethrow;
  }
}