import 'package:logger/web.dart';

// log
final log = Log.defaultLog;

// Log
class Log {
  static final defaultLog = Log();

  late final printer = PrettyPrinter(
    stackTraceBeginIndex: 1,
    methodCount: 2,
    dateTimeFormat: DateTimeFormat.dateAndTime,
  );
  late final logger = Logger(printer: printer);

  void trace(dynamic message) {
    logger.t(message);
  }

  void debug(dynamic message) {
    logger.d(message);
  }

  void info(dynamic message) {
    logger.i(message);
  }

  void warning(dynamic message) {
    logger.w(message);
  }

  void error(dynamic message, Object? error) {
    logger.e(message, error: error);
  }

  void fatal(dynamic message, Object? error) {
    logger.f(message, error: error);
  }
}
