import 'package:chatty/constants/images.dart';
import 'package:chatty/screens/profile_edit_screen.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  maxRadius: deviceWidth / 5.5,
                  foregroundImage: const AssetImage(improfile),
                ),
                Positioned(
                  top: 110,
                  left: 110,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProfileEditScreen()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[300],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: Icon(
                          Icons.edit_outlined,
                          size: 27,
                          color: Colors.grey[700],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: deviceHeight / 20,
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.person_2_outlined,
                    size: 30,
                  ),
                  SizedBox(
                    width: deviceWidth / 20,
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Soumyajit Mukherjee',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: deviceWidth / 20,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: deviceHeight / 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.phone_outlined,
                    size: 30,
                  ),
                  SizedBox(
                    width: deviceWidth / 30,
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "+917384421784",
                        style: TextStyle(fontSize: 19),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: deviceHeight / 40,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: deviceHeight / 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey[800],
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(
                          "efhwefhwoefhwoeifowefjweofjweofjoweifjoweijfoweirerijgrgjaoegajaogjrgpoejgoejgpaeirjgoaierjgoigjeroigjijoijoifjgoirdjgoiejgerjgoejghg",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ],
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
