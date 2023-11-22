import 'package:chatty/screens/home_screen.dart';
import 'package:chatty/screens/register_screen.dart';
import 'package:chatty/widgets/custom_button.dart';
import 'package:chatty/widgets/text_feild_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //text controller
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;

    //sign in method
    //void signIn() {}

    return Scaffold(
      backgroundColor: Colors.grey[120],
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                //App logo
                children: [
                  SizedBox(
                    height: deviceHeight / 7,
                  ),

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
                    'Welcome To Chatty !',
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
                    height: deviceHeight / 20,
                  ),

                  //signin button
                  customButton(context, title: "Sign In", onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()),
                    );
                  }),
                  //not a user register now

                  SizedBox(
                    height: deviceHeight / 40,
                  ),

                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterScreen()),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Don\'t have an Account ?',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(width: deviceWidth / 35),
                        const Text(
                          'Register',
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
