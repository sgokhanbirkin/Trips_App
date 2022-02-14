import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trips_app/cubit/app_cubit_states.dart';
import 'package:trips_app/cubit/app_cubits.dart';
import 'package:trips_app/pages/detailpage/detail_page.dart';
import 'package:trips_app/pages/homepage/home_page.dart';
import 'package:trips_app/pages/welcome/welcome_page.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({Key? key}) : super(key: key);

  @override
  _AppCubitLogicsState createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitStates>(
        builder: (context, state) {
          if (state is WelcomeState) {
            return const WelcomePage();
          }
          if (state is LoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is LoadedState) {
            return const HomePage();
          }
          if (state is DetailState) {
            return const DetailPage();
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
