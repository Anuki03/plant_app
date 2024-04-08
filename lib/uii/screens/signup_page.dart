import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/uii/screens/widgets/custom_textfield.dart';
import 'package:plant_app/uii/screens/signin_page.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

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
              SizedBox(
                height: 350,
                child: Image.asset(
                  'images/signup.png',
                ),
              ),
              const Text(
                'Sign Up',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              ),
              const CustomTextfield(
                icon: Icons.alternate_email,
                obscureText: false,
                hintText: 'Enter Email',
              ),
              const CustomTextfield(
                icon: Icons.person,
                obscureText: true,
                hintText: 'Enter Full Name',
              ),
              const CustomTextfield(
                icon: Icons.lock,
                obscureText: true,
                hintText: 'Enter Password',
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {},
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
                      'Sign Up',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
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
                height: 10,
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
                      'Sign Up with Google',
                      style:
                          TextStyle(color: Constants.blackColor, fontSize: 15),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      PageTransition(
                        child: const SigninPage(),
                        type: PageTransitionType.bottomToTop,
                      ));
                },
                child: Center(
                  child: Text.rich(TextSpan(children: [
                    TextSpan(
                        text: 'Have an Account?',
                        style: TextStyle(color: Constants.blackColor)),
                    TextSpan(
                        text: 'Login',
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
