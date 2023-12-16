import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tesapp/bloc/home/home_bloc.dart';
import 'package:tesapp/bloc/login/login_bloc.dart';
import 'package:tesapp/pages/login_page.dart';
import 'package:sizer/sizer.dart';
import 'injection.dart' as git;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  git.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => git.locator<LoginBloc>(),
          ),
          BlocProvider(
            create: (context) => git.locator<HomeBloc>(),
          ),
        ],
        child: Sizer(
          builder: (context, orientation, deviceType) {
            return const MaterialApp(
              debugShowCheckedModeBanner: false,
              title: "Test App",
              home: LoginPage(),
            );
          },
        ));
  }
}
