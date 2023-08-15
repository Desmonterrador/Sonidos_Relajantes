import 'package:aplicacion_sonidos/lista.dart';
import 'package:flutter/material.dart';
import 'package:aplicacion_sonidos/imagenes.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: imagenes(),
      ),
    );
  }
}
