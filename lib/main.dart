import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_app/data/repository/sportsmen_repository.dart';
import 'package:sport_app/domain/service/sportsman_service.dart';
import 'package:sport_app/ui/app_routes.dart';
import 'package:sport_app/ui/pages/main_page/main_page.dart';
import 'package:sport_app/ui/pages/sportsman_list_page/sportsman_list_page.dart';
import 'package:sport_app/ui/pages/sportsman_list_page/sportsman_list_page_model.dart';
import 'package:sport_app/ui/theme/theme_model.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:sqflite/sqflite.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isWindows || Platform.isLinux) {
    sqfliteFfiInit();
  }

  databaseFactory = databaseFactoryFfi;
  final path = await getDatabasesPath();
  debugPrint(path);
  final migrations = await rootBundle.loadString('assets/migration/init.sql');
  final database = await databaseFactory.openDatabase(
    '$path/sport.db',
    options: OpenDatabaseOptions(
      version: 1,
      onCreate: (db, version) async {
        await db.execute(migrations);
      },
    ),
  );
  final sportsmenRepository = SportsmanRepository(database);
  final sportsmanService = SportsmanService(sportsmenRepository);

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => ThemeCubit.dark(),
        ),
        BlocProvider(
          create: (ctx) => SportsmenListPageModel(sportsmanService),
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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: context.watch<ThemeCubit>().state,
      home: const MainPage(),
      routes: {
        sportsmanList: (_) => const SportsmenListPage(),
      },
    );
  }
}
