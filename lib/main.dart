import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_app/ui/app_routes.dart';
import 'package:sport_app/ui/pages/main_page/main_page.dart';
import 'package:sport_app/ui/theme/theme_model.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:sqflite/sqflite.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isWindows || Platform.isLinux) {
    sqfliteFfiInit();
  }

  databaseFactory = databaseFactoryFfi;
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => ThemeCubit.dark(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: context.watch<ThemeCubit>().state,
      home: const MainPage(),
      routes: {
        sportsmanList : _buildSportsmanPage,
      },
    );
  }

  Widget _buildSportsmanPage(BuildContext context){
    return Container();
  }
}
