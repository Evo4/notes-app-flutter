import 'package:flutter/foundation.dart';
import 'package:logger/web.dart';

// log
final log = Log();

// Log
class Log {
  Log._privateConstructor();
  static final Log _instance = Log._privateConstructor();
  factory Log() => _instance;

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
