import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/uii/root_page.dart';
import 'package:plant_app/uii/screens/signup_page.dart';
import 'package:plant_app/uii/screens/widgets/custom_textfield.dart';
import 'package:plant_app/uii/screens/widgets/forgot_password.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'images/signin.png',
              ),
              const Text(
                'Sign In',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              ),
              const CustomTextfield(
                icon: Icons.alternate_email,
                obscureText: false,
                hintText: 'Enter Email',
              ),
              const CustomTextfield(
                icon: Icons.lock,
                obscureText: true,
                hintText: 'Enter Password',
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      PageTransition(
                        child: const RootPage(),
                        type: PageTransitionType.bottomToTop,
                      ));
                },
                child: Container(
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Constants.primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: const Center(
                    child: Text(
                      'Sign In',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      PageTransition(
                        child: const ForgotPassword(),
                        type: PageTransitionType.bottomToTop,
                      ));
                },
                child: Center(
                  child: Text.rich(TextSpan(children: [
                    TextSpan(
                        text: 'Forgot Password?',
                        style: TextStyle(color: Constants.blackColor)),
                    TextSpan(
                        text: 'Reset Here',
                        style: TextStyle(color: Constants.primaryColor))
                  ])),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                children: [
                  Expanded(child: Divider()),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Text('OR'),
                  ),
                  Expanded(child: Divider()),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: size.width,
                decoration: BoxDecoration(
                    border: Border.all(color: Constants.primaryColor),
                    borderRadius: BorderRadius.circular(10)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 25,
                      child: Image.asset('images/google.png'),
                    ),
                    Text(
                      'Sign In with Google',
                      style:
                          TextStyle(color: Constants.blackColor, fontSize: 15),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      PageTransition(
                        child: const SignUp(),
                        type: PageTransitionType.bottomToTop,
                      ));
                },
                child: Center(
                  child: Text.rich(TextSpan(children: [
                    TextSpan(
                        text: 'New to Planty?',
                        style: TextStyle(color: Constants.blackColor)),
                    TextSpan(
                        text: 'Register',
                        style: TextStyle(color: Constants.primaryColor))
                  ])),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}