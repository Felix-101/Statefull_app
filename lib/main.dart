import 'package:flutter/material.dart';
import 'package:stateful_app/api/api.dart';
import 'screens/home.dart';
import 'package:stateful_app/provider/api_provider.dart';
//import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
/*  const ProviderScope(
child: MyApp(),),*/
      const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true),
      home: ApiProvider(
        api: Api(),
        child: const HomePage(),
      ),
    );
  }
}
