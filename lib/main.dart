import 'package:amazing_001/register/startup.dart';
import 'package:amazing_001/setting/globalvariable.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'data/data.dart';
import 'test.dart';
// short cuts
// ctr + shift + r  all option when select something
//commands
//flutter create projectname
//flutter run
//flutter doctor
//--------------------------------------- build apk
//flutter build apk --release // apk size arround 17 MB
//flutter build apk --release --split-debug-info=./debug_apks  // apk size arround 16 MB

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppCounter.incrementAppOpenCount(); // Increment app open count
  ColorProvider colorProvider = ColorProvider();
  await colorProvider.init();
  runApp(
    ChangeNotifierProvider.value(
      value: colorProvider,
      child: const App(),
    ),
  );
}

// class App extends StatelessWidget {
//   const App({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Test(),
//     );
//   }
// }

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartUp(),
    );
  }
}
