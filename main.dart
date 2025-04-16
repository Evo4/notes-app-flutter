import 'logger.dart';
import 'utils/utils.dart';

final utils = Utils();

void main() {
  const int loopsCount = 1;
  for (var i = 0; i < loopsCount; i++) {
    final number = summator(1, i);
    log.debug('number: ${number}');
  }
}

int summator(int num1, int num2) {
  return num1 + num2;
}
