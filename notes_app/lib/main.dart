import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:notes_app/screens/tab_page/tab_page.dart';
import 'package:notes_app/services/user_agent_service.dart';
import 'package:notes_app/utils/logger.dart';

Future<void> startupHook() async {
  var userAgentService = await UserAgentService.create();

  var message = 'platform: $defaultTargetPlatform';
  message += '\nApp Name: ${userAgentService.appName}';
  message += '\nVersion: ${userAgentService.version}';
  message += '\nBuild Number: ${userAgentService.buildNumber}';
  message += '\nPackage Name: ${userAgentService.packageName}';
  log.debug(message);
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await startupHook();
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Notes App',
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: TabPage(),
    );
  }
}
