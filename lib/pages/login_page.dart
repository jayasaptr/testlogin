import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:tesapp/bloc/login/login_bloc.dart';
import 'package:tesapp/pages/home_page.dart';
import 'package:tesapp/theme.dart';
import 'package:tesapp/widget/btn_primary.dart';

import '../widget/textfield_custome.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state is LoginSuccess) {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
                (route) => false);
          }
          if (state is LoginError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
                backgroundColor: merahMuda,
              ),
            );
          }
        },
        builder: (context, state) {
          if (state is LoginLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: SvgPicture.asset(
                      'assets/images/aunty.svg',
                      width: 60.w,
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextfieldCustome(
                    controller: LoginBloc.email,
                    title: "Email",
                    hintText: "Masukan Email",
                  ),
                  const SizedBox(height: 10),
                  TextfieldCustome(
                    controller: LoginBloc.password,
                    title: "Password",
                    hintText: "Masukan Password",
                    obscureText: true,
                  ),
                  const SizedBox(height: 20),
                  BtnPrimary(
                    onTap: () {
                      context.read<LoginBloc>().add(LoginEventLogin(
                            email: LoginBloc.email.text,
                            password: LoginBloc.password.text,
                          ));
                    },
                    title: "Login",
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
