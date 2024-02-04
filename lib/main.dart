import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:hyperhire_app/chatPage.dart';
import 'package:hyperhire_app/utilities/constants.dart';
import 'package:hyperhire_app/utilities/theme.dart';
import 'package:sendbird_chat_sdk/sendbird_chat_sdk.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: [SystemUiOverlay.top],
  );

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
        statusBarColor: AppColors.bgColor,
        systemNavigationBarColor: AppColors.bgColor),
  );
  await SendbirdChat.init(appId: 'BC823AD1-FBEA-4F08-8F41-CF0D9D280FBF');

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: const ChatScreen(),
    );
  }
}
