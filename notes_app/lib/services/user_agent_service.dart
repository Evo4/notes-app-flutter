import 'package:package_info_plus/package_info_plus.dart';

class UserAgentService {
  UserAgentService._privateConstructor();

  // Public Properties
  String get appName {
    return _packageInfo.appName;
  }

  String get version {
    return _packageInfo.version;
  }

  String get buildNumber {
    return _packageInfo.buildNumber;
  }

  String get packageName {
    return _packageInfo.packageName;
  }

  // Private Properties
  late final PackageInfo _packageInfo;

  // Entrypoint
  static Future<UserAgentService> create() async {
    var service = UserAgentService._privateConstructor();
    service._packageInfo = await PackageInfo.fromPlatform();
    return service;
  }
}
