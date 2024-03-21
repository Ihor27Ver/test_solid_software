import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_solid_software/presentation/screen/home/bloc/home_bloc.dart';
import 'package:test_solid_software/presentation/screen/home/bloc/home_models.dart';
import 'package:test_solid_software/presentation/screen/home/widget/color_change_ink_well.dart';

/// HomeScreen - A stateless widget that builds the home screen of the app.
///
/// This screen is built using Flutter Bloc for state management.
/// It listens to the HomeBloc for state changes and rebuilds
///  its UI accordingly. The screen utilizes
/// flutter_screenutil for responsive sizing.
class HomeScreen extends StatelessWidget {
  /// Constructor for `HomeScreen`.
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: state.backgroundColor,
          body: ColorChangeInkWell(
            onTap: () => context.read<HomeBloc>().add(HomeEvent.changeColor()),
            textColor: state.textColor,
          ),
        );
      },
    );
  }
}
