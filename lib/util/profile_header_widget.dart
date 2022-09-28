import 'package:flutter/material.dart';

Widget profileHeaderWidget(BuildContext context) {
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(color: Color.fromARGB(255, 194, 240, 255)),
    child: Padding(
      padding: const EdgeInsets.only(left: 18.0, right: 18.0, bottom: 18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundColor: Color(0xff74EDED),
                backgroundImage: NetworkImage(
                    "https://steamuserimages-a.akamaihd.net/ugc/1692772971374892784/C764A005644E2325F4563927CF997158A4FADB96/?imw=512&&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=false"),
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "69",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                      Text(
                        "Posts",
                        style: TextStyle(
                            fontSize: 15,
                            letterSpacing: 0.2,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Text(
                        "500",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                      Text(
                        "Followers",
                        style: TextStyle(
                            fontSize: 15,
                            letterSpacing: 0.2,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Text(
                        "2",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                      Text(
                        "Following",
                        style: TextStyle(
                            fontSize: 15,
                            letterSpacing: 0.2,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "John Doe",
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.w600,
              fontSize: 16,
              letterSpacing: 0.4,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            "bio goes here",
            style: TextStyle(letterSpacing: 0.4, color: Colors.black),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(174, 216, 230, 100),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    minimumSize: Size(0, 30),
                    side: BorderSide(color: Colors.grey)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Text(
                    "Edit Profile",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ))
            ],
          ),
        ],
      ),
    ),
  );
}
