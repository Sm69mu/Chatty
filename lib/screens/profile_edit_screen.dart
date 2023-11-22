import 'package:chatty/constants/const_exports.dart';
import 'package:chatty/widgets/normal_button.dart';
import 'package:chatty/widgets/text_feild_widget.dart';
import 'package:flutter/material.dart';

class ProfileEditScreen extends StatelessWidget {
  const ProfileEditScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final emailEditController = TextEditingController();
    final nameEditController = TextEditingController();
    final passwordEditController = TextEditingController();
    final confirmPasswordEditController = TextEditingController();
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[120],
      appBar: AppBar(
        title: const Text(
          'Edit Profile',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            Column(
              children: [
                Center(
                  child: CircleAvatar(
                    maxRadius: deviceWidth / 5.5,
                    foregroundImage: const AssetImage(improfile),
                  ),
                ),
                SizedBox(
                  height: deviceHeight / 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 13),
                  child: TextFeildWidget(
                      controller: nameEditController,
                      hintText: "Edit Your name",
                      obscureText: false),
                ),
                SizedBox(
                  height: deviceHeight / 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 13),
                  child: TextFeildWidget(
                      controller: emailEditController,
                      hintText: "Edit Your Email",
                      obscureText: false),
                ),
                SizedBox(
                  height: deviceHeight / 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 13),
                  child: TextFeildWidget(
                      controller: passwordEditController,
                      hintText: "Enter Your Password",
                      obscureText: true),
                ),
                SizedBox(
                  height: deviceHeight / 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 13),
                  child: TextFeildWidget(
                      controller: confirmPasswordEditController,
                      hintText: "Confirm Your Password",
                      obscureText: true),
                ),
                SizedBox(
                  height: deviceHeight / 37,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: normalButton(context,
                          title: "Cancel",
                          color: Colors.grey[800],
                          textColor: Colors.white),
                    ),
                    SizedBox(
                      width: deviceWidth / 15,
                    ),
                    normalButton(context,
                        title: "Save",
                        color: Colors.white,
                        textColor: Colors.black),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                )
              ],
            ),
            Positioned(
              top: 110,
              left: 240,
              child: InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[300]),
                  child: const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Icon(
                      Icons.edit_outlined,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
