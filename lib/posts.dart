import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget post(String userImage, String userName, String postPic, postTxt) {
  return Container(
    height: 560.0,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16.0)
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 8.0),
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  border: Border.all(
                      color: Colors.pink,
                      width: 2.0
                  ),
                  image: DecorationImage(image: AssetImage(userImage))
                ),
              ),
              Text(userName, style: TextStyle(fontSize: 18.0),),
              Expanded(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_vert),
                    alignment: Alignment.centerRight,
                  )
              )
            ],
          ),
          // COntainer for post image
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: 300.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              image: DecorationImage(image: AssetImage(postPic), fit: BoxFit.cover)
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {},
                  color: Colors.black,
                  iconSize: 25.0,
                  icon: Icon(Icons.favorite_border)
              ),
              IconButton(
                  onPressed: () {},
                  color: Colors.black,
                  iconSize: 25.0,
                  icon: Icon(Icons.chat_bubble_outline)
              ),
              IconButton(
                  onPressed: () {},
                  color: Colors.black,
                  iconSize: 25.0,
                  icon: Icon(Icons.send)
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("6 Likes"),
                SizedBox(width: 10.0,),
                Text("7 Comments")
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
            child: Row(
              children: [
                Text(
                  postTxt,
                  style: TextStyle(fontSize: 18.0,),
                ),
              ],
            )
          ),
          // Comment Section
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    filled: true,
                    fillColor: Colors.blueGrey.shade50,
                    hintText: "Write a comment!",
                    contentPadding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0)
                  ),
                ),
              ),
              IconButton(
                  onPressed: () {},
                  color: Colors.blue.shade500,
                  icon: Icon(Icons.send)
              )
            ],
          )
        ],
      ),
    ),
    margin: EdgeInsets.only(bottom: 10.0),
  );
}






