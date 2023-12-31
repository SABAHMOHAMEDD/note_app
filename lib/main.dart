import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/cubit/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/notes_model.dart';
import 'package:note_app/views/notes_view.dart';
import 'package:note_app/views/splash_screen.dart';

import 'core/bloc_observer.dart';
import 'core/constants.dart';

void main() async {
  Bloc.observer = MyBlocObserver();

  await Hive.initFlutter();
  Hive.registerAdapter(NotesModelAdapter());

  await Hive.openBox<NotesModel>(kNotesBox);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => NotesCubit())],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          // theme: ThemeData.dark(),
          theme: ThemeData(
              brightness: Brightness.dark,
              useMaterial3: true,
              fontFamily: "Poppins"),
          home: SplashScreen()),
    );
  }
}
