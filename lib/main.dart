import 'package:figma/Data/Cubits/GetNewsCubit/get_news_cubit.dart';
import 'package:figma/Screens/First.dart';
import 'package:figma/Screens/Second.dart';
import 'package:figma/Screens/Third.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Screens/Forth.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<GetNewsCubit>(
      create: (BuildContext context) => GetNewsCubit(),
    ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'News App',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const FirstScreen()),
    );
    
  }
}