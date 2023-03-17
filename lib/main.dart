import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task5/app.dart';
import 'package:task5/util/bloc%20_observer.dart';
import 'package:task5/util/dio/dio.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  BlocOverrides.runZoned(() async {
      DioHelper.init();
      runApp(const MyApp());
    },
    blocObserver: MyBlocObserver(),
  );
}



