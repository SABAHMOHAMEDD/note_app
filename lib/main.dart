import 'package:flutter/material.dart';

import 'features/views/notes_view.dart';

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
        // theme: ThemeData.dark(),
        theme: ThemeData(
            brightness: Brightness.dark,
            useMaterial3: true,
            fontFamily: "Poppins"),
        home: NotesView());
  }
}
