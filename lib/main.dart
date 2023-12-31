import 'package:anm_mart/constants/global_colors.dart';
import 'package:anm_mart/features/auth/presentation/screens/auth_screen.dart';
import 'package:anm_mart/routers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: GlobalColors.backgroundColor,
          primaryColorLight: GlobalColors.secondaryColor,
          appBarTheme: AppBarTheme(
            elevation: 0,
          ),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        onGenerateRoute: (settings) => generateRoute(settings),
        home: AuthSceen());
  }
}
