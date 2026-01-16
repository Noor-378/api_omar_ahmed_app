import 'package:api_app/cubit/my_cubit.dart';
import 'package:api_app/home_screen.dart';
import 'package:api_app/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  initGetIt();
  runApp(
    MultiBlocProvider(
      providers: [BlocProvider(create: (_) => getIt<MyCubit>())],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: HomeScreen(),
    );
  }
}

//////////////////////////////////////////////////////////////////////////////
