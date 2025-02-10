import 'package:flutter/material.dart';
import 'package:flutter_hive_db/hive_database.dart';
import 'package:hive_flutter/adapters.dart';

void main( ) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox("MyBox");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HiveDatabaseFlutter(),
    );
  }
}
