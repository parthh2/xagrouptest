import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController postTextEditingController =
      TextEditingController();


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Test"),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: postTextEditingController,

              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: onPressCreateNewPost,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  "Create New Post",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: getPostList(),
            ),
          ],
        ),
      );

  ListView getPostList() => ListView.builder(
        itemCount: 15,
        padding: const EdgeInsets.all(10),
        itemBuilder: (_, index) => Padding(
          padding: EdgeInsets.only(top: index == 0 ? 0 : 10),
          child: getPostItem(),
        ),
      );

  Container getPostItem() => Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.black, width: 1),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                "asdfadsf",
                style: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "Edit",
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "Delete",
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      );

  void onPressCreateNewPost() {
    print("test");
    postTextEditingController.text = "";

  }
}
