import 'package:flutter/material.dart';

Widget messageBar(String userName, String userImage, String lastTxt) {
  return Container(
    height: 85.0,
    width: 380.0,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8.0)
    ),
    child: Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        children: [
          SizedBox(
            height: 5.0,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 4.0, top: 4.0),
                width: 60.0,
                height: 60.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    border: Border.all(
                        color: Colors.pink,
                        width: 2.0
                    ),
                    image: DecorationImage(image: AssetImage(userImage))
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(userName),
                  Text(lastTxt, style: TextStyle(color: Colors.grey),)
                ],
              ),
              Expanded(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.camera_alt),
                    iconSize: 30.0,
                    alignment: Alignment.centerRight,
                  )
              )
            ],
          )
        ],
      ),
    )
  );
}