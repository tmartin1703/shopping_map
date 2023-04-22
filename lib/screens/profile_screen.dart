import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(
          height: 64.0,
        ),
        const Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 24.0),
            child: Text(
              'Profile',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 34.0,
                  color: Color(0xFF474D53)),
            ),
          ),
        ),
        const SizedBox(
          height: 32.0,
        ),
        Row(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(left: 24.0),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(
                    "https://static-00.iconduck.com/assets.00/user-avatar-icon-512x512-vufpcmdn.png"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      child: Text("John Doe",
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF474D53))),
                    ),
                  ),
                  Text("john.doe@gmail.com",
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          color: Color(0XFF89909E))),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                  )),
            )
          ],
        ),
        const SizedBox(height: 32),
        const Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 24.0),
            child: Text('LAST TRIPS',
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0XFF89909E))),
          ),
        ),
        ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          padding: const EdgeInsets.all(8),
          children: const <Widget>[
            ListTile(
                title: Text("Past shopping routes",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF474D53))),
                leading: Icon(
                  Icons.shopping_cart,
                  color: Color(0xFF474D53),
                )),
            ListTile(
                title: Text("Grocery list archive",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF474D53))),
                leading: Icon(
                  Icons.assessment,
                  color: Color(0xFF474D53),
                )),
          ],
        ),
        const Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 24.0),
            child: Text('SETTINGS',
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0XFF89909E))),
          ),
        ),
        ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          padding: const EdgeInsets.all(8),
          children: const <Widget>[
            ListTile(
                title: Text("Notifications",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF474D53))),
                leading: Icon(
                  Icons.notifications,
                  color: Color(0xFF474D53),
                )),
          ],
        ),
      ],
    );
  }
}
