import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/uii/screens/widgets/profile_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(16),
        height: size.height,
        width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Constants.primaryColor.withOpacity(0.5),
                  width: 5,
                ),
              ),
              child: const CircleAvatar(
                radius: 60,
                backgroundColor: Colors.transparent,
                backgroundImage: ExactAssetImage('images/profile.jpg'),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: size.width * 0.3,
              child: Row(
                children: [
                  const Text(
                    'John Doe',
                    style: TextStyle(
                        color: Color.fromARGB(255, 50, 46, 46), fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                    child: Image.asset('images/verified.png'),
                  ),
                ],
              ),
            ),
            Text(
              'johndoe@gmail.com',
              style: TextStyle(
                color: Constants.blackColor.withOpacity(0.3),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: size.height * 0.7,
              width: size.width,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ProfileWidget(
                    icon: Icons.person,
                    title: 'My Profile',
                  ),
                  ProfileWidget(
                    icon: Icons.settings,
                    title: 'Settings',
                  ),
                  ProfileWidget(
                    icon: Icons.notifications,
                    title: 'Notifications',
                  ),
                  ProfileWidget(
                    icon: Icons.chat,
                    title: 'FAQs',
                  ),
                  ProfileWidget(
                    icon: Icons.share,
                    title: 'Share',
                  ),
                  ProfileWidget(
                    icon: Icons.logout,
                    title: 'Logout',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
