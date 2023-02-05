import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopping_ui/json/constant.dart';
import 'package:shopping_ui/theme/colors.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: getBody(),
    );
  }

  Widget getBody() {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),

        ),
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    FontAwesomeIcons.box,
                    color: black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Orders",
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(
                    FontAwesomeIcons.mapMarkerAlt,
                    color: black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "My Address",
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(
                    FontAwesomeIcons.cog,
                    color: black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Setttings",
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Divider(
          thickness: 1,
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            children: List.generate(accountList.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          accountList[index],
                          style: TextStyle(fontSize: 16),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: black.withOpacity(0.5),
                          size: 17,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Divider(
                      color: grey.withOpacity(0.8),
                    )
                  ],
                ),
              );
            }),
          ),
        )
      ],
    );
  }
}
