import 'package:chatty/screens/login_screen.dart';
import 'package:chatty/widgets/custom_button.dart';
import 'package:chatty/widgets/text_feild_widget.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final confirmpasswordController = TextEditingController();
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;

    //signup method
    void signUp() {}

    return Scaffold(
      backgroundColor: Colors.grey[120],
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                children: [
                  SizedBox(
                    height: deviceHeight / 7,
                  ),
                  //App logo
                  Icon(
                    Icons.chat_rounded,
                    size: 95,
                    color: Colors.grey[200],
                  ),

                  SizedBox(
                    height: deviceHeight / 20,
                  ),

                  // welcome text
                  Text(
                    'Register To Chatty !',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[300]),
                  ),

                  SizedBox(
                    height: deviceHeight / 15,
                  ),

                  //email text field
                  TextFeildWidget(
                      controller: emailController,
                      hintText: "Email",
                      obscureText: false),

                  SizedBox(
                    height: deviceHeight / 50,
                  ),

                  //password text field
                  TextFeildWidget(
                      controller: passwordController,
                      hintText: "Password",
                      obscureText: true),

                  SizedBox(
                    height: deviceHeight / 50,
                  ),

                  //confiirm password text field
                  TextFeildWidget(
                      controller: confirmpasswordController,
                      hintText: "Confirm Password",
                      obscureText: true),
                  SizedBox(
                    height: deviceHeight / 20,
                  ),

                  //signup button
                  customButton(context, title: "Sign Up", onPress: signUp),
                  //already have an ac

                  SizedBox(
                    height: deviceHeight / 40,
                  ),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Already have a an account ?',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(width: deviceWidth / 35),
                        const Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
