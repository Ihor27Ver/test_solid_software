import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_solid_software/presentation/screen/home/bloc/home_bloc.dart';
import 'package:test_solid_software/presentation/screen/home/home_screen.dart';

/// App - The root widget of the application.
///
/// This widget sets up the global configuration and provides the necessary
/// dependencies for the app to function. It is responsible for initializing
/// and configuring aspects like screen size adaptation, state management,
/// and navigation.
class App extends StatelessWidget {
  /// Constructor for `App`.
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) {
        return BlocProvider(
          create: (_) => HomeBloc(),
          child: MaterialApp(
            builder: (context, widget) {
              return const HomeScreen();
            },
          ),
        );
      },
    );
  }
}
