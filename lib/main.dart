import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'App/Views/Screen/AudioConversationPage.dart';
import 'App/Views/Screen/HomePage.dart';
import 'App/Views/Screen/LogInPage.dart';
import 'App/Views/Screen/MePage.dart';
import 'App/Views/Screen/NavigationBar.dart';
import 'App/Views/Screen/PhoneVerifyPage.dart';
import 'App/Views/Screen/PracticePage.dart';
import 'App/Views/Screen/RoomManamentCenterPage.dart';
import 'App/Views/Screen/PopulaPage.dart';
import 'App/Views/Screen/TeamPkPage.dart';
import 'App/Views/Screen/VoiceRoomCustomize.dart';

void main() => runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(), // Wrap your app
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  LogInScreen(),
    );
  }
}
