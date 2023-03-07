import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_example/data/message_dao.dart';
import 'package:firebase_example/firebase_options.dart';
import 'package:firebase_example/ui/login.dart';
import 'package:firebase_example/ui/message_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'data/user_dao.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [Provider(lazy: false, create: (_) => MessageDao())],
        child: MultiProvider(
            providers: [
              ChangeNotifierProvider<UserDao>(
                lazy: false,
                create: (_) => UserDao(),
              ),
              Provider<MessageDao>(
                lazy: false,
                create: (_) => MessageDao(),
              ),
            ],
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'RayChat',
              theme: ThemeData(
                primaryColor: const Color(0xFF3D814A),
              ),
              home: Consumer<UserDao>(
                builder: (
                  context,
                  userDao,
                  child,
                ) {
                  if (userDao.isLoggedIn()) {
                    return const MessageList();
                  } else {
                    return const Login();
                  }
                },
              ),
            )));
  }
}
