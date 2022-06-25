import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instagram_dummy/message.dart';
import 'package:instagram_dummy/posts.dart';
import 'package:instagram_dummy/storybtn.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
    home: InstagramApp(),
    );
  }
}

class InstagramApp extends StatefulWidget {
  const InstagramApp({Key? key}) : super(key: key);

  @override
  State<InstagramApp> createState() => _InstagramAppState();
}

class _InstagramAppState extends State<InstagramApp> {
  Color mainColor = Colors.grey.shade100;
  List<String> userDp = ["sampledata/gettyimages-168346757_web.jpeg", "sampledata/gettyimages-1146431497.webp", "sampledata/rsz-gettyimages-148307532.jpeg"];
  List<String> userPics = ["sampledata/gettyimages-168346757_web.jpeg", "sampledata/gettyimages-1146431497.webp", "sampledata/rsz-gettyimages-148307532.jpeg"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        backgroundColor: mainColor,
        elevation: 0.0,
        title: Text("Instagram", style: TextStyle(fontFamily: 'RobotoMono',
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 26),),
        actions: [
          IconButton(onPressed: () {},
            color: Colors.black,
            icon: Icon(Icons.add_box_outlined),
            iconSize: 30,
          ),
          IconButton(// Within the `FirstRoute` widget
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Messages()),
              );
            },
              color: Colors.black,
              icon: Icon(Icons.send),
              iconSize: 30,
          )
        ],
      ),

      // App Body design
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Stories", style: TextStyle(fontSize: 18),)
                  ],
                )
              ,),
              Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    storyButton(userDp[0], "Sarru"),
                    storyButton(userDp[1], "Sarru"),
                    storyButton(userDp[2], "Sarru"),
                    storyButton(userDp[0], "Sarru"),
                    storyButton(userDp[1], "Sarru"),
                    storyButton(userDp[2], "Sarru"),
                    storyButton(userDp[0], "Sarru"),
                    storyButton(userDp[1], "Sarru"),
                    storyButton(userDp[2], "Sarru")
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              //Post widgth
              post(userPics[0], "Saket", userPics[0], "Vacation Trip!!!"),
              post(userPics[0], "Saket", userPics[0], "Vacation Trip!!!"),
              post(userPics[0], "Saket", userPics[0], "Vacation Trip!!!"),
            ],
          ),
        ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: mainColor,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.pink,
        items: [
          BottomNavigationBarItem(
            backgroundColor: mainColor,
            icon: Icon(Icons.home),
            label: "Home"
          ),
          BottomNavigationBarItem(
              backgroundColor: mainColor,
              icon: Icon(Icons.search),
              label: "Search"
          ),
          BottomNavigationBarItem(
              backgroundColor: mainColor,
              icon: Icon(Icons.view_array_outlined),
              label: "Reels"
          ),
          BottomNavigationBarItem(
              backgroundColor: mainColor,
              icon: Icon(Icons.favorite),
              label: "Activity"
          ),
          BottomNavigationBarItem(
              backgroundColor: mainColor,
              icon: Icon(Icons.person),
              label: "Profile"
          ),

        ],
      )
    );
  }
}

class Messages extends StatefulWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  Color mainColor = Colors.white;
  List<String> friend = ["Gautam", "Meghna", "Bhargav", "Saket"];
  List<String> userImg = ["sampledata/gettyimages-168346757_web.jpeg", "sampledata/gettyimages-1146431497.webp", "sampledata/rsz-gettyimages-148307532.jpeg"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        backgroundColor: mainColor,
        elevation: 0.0,
        leading: IconButton(// Within the SecondRoute widget
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.black,
          icon: Icon(Icons.arrow_back),
          iconSize: 30,
        ),
        title: Text("GoogleBug", style: TextStyle(fontFamily: 'RobotoMono',
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 26),
        ),
        actions: [
          IconButton(onPressed: () {},
            color: Colors.black,
            icon: Icon(Icons.video_call_outlined),
            iconSize: 30,
          ),
          IconButton(onPressed: () {},
            color: Colors.black,
            icon: Icon(Icons.add),
            iconSize: 30,
          ),
        ],
      ),
      // Message Body Design
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        filled: true,
                        fillColor: Colors.blueGrey.shade50,
                        prefixIcon: Icon(Icons.search),
                        hintText: "Search",
                        contentPadding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0)
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(padding: const EdgeInsets.only(top: 8.0)),
                Text("Messages", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),
                Text("Requests", style: TextStyle(color: Colors.lightBlueAccent, fontSize: 20.0), textAlign: TextAlign.end),
              ],
            ),
            Container(
              height: 900,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Padding(padding: const EdgeInsets.only(top: 10.0)),
                  messageBar(friend[0], userImg[0], "Hello World!"),
                  messageBar(friend[1], userImg[0], "Hello World!"),
                  messageBar(friend[2], userImg[0], "Hello World!"),
                  messageBar(friend[3], userImg[0], "Hello World!"),
                  messageBar(friend[0], userImg[0], "Hello World!"),
                  messageBar(friend[1], userImg[0], "Hello World!"),
                  messageBar(friend[2], userImg[0], "Hello World!"),
                  messageBar(friend[3], userImg[0], "Hello World!"),
                  messageBar(friend[0], userImg[0], "Hello World!"),
                  messageBar(friend[1], userImg[0], "Hello World!"),
                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Color mainColor = Colors.blueGrey.shade100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
      backgroundColor: mainColor,
      elevation: 0.0,
      title: Text("GoogleBug", style: TextStyle(fontFamily: 'RobotoMono',
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 26),
      ),
      leading: IconButton(
        onPressed: () {},
        color: Colors.grey,
        icon: Icon(Icons.keyboard_arrow_down_sharp),
      ),
      actions: [
        IconButton(onPressed: () {},
          color: Colors.black,
          icon: Icon(Icons.add_box_outlined),
          iconSize: 30,
        ),
        IconButton(onPressed: () {},
          color: Colors.black,
          icon: Icon(Icons.menu),
          iconSize: 30,
        ),
      ],
    ),

    );
  }
}


