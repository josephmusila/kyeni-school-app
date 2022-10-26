import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/app_cubit.dart';
import '../../cubits/app_cubit_states.dart';
import 'StudentWelcomePage.dart';


class FinalScreen extends StatelessWidget {
  const FinalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final studentdetail = context.watch<AppCubit>();

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      height: double.infinity,
      child: ListView(
        children: [
          studentdetail.state is StudentWelcomeState
              ? StudentWelcomePage()
              : studentdetail.state is StudentDataLoadingState
                  ? Text("loading")
                  : studentdetail.state is StudentDataLoadedState
                      ?  Text("hello")
                      : const Text("erro"),
        ],
      ),
    );
  }
}
