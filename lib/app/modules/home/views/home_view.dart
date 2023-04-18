import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
// import 'package:faker/faker.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text('Massages'),
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.black,
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              color: Colors.grey,
              onPressed: () {},
            )
          ],
        ),
        body: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) => ListTile(
            title: Text('User ke-${index +1}'),
            subtitle: Text('Helloooooow!'),
            leading: CircleAvatar(
              child: Icon(
                Icons.person,
                color: Colors.black,
              ),
              backgroundColor: Color.fromARGB(255, 243, 176, 254),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
        backgroundColor:Color.fromARGB(255, 243, 176, 254),
        onPressed: () {},
        child: Icon(Icons.add,color: Colors.black,),
      ),
        bottomNavigationBar: ConvexAppBar(
          backgroundColor: Color.fromARGB(255, 240, 239, 239),
          color: Colors.black,
          activeColor: Colors.black,
          items: [
            TabItem(icon: Icons.message, title: 'Message'),
            TabItem(icon: Icons.people, title: 'Contacts'),
            TabItem(icon: Icons.settings, title: 'Settings'),
          ],
          onTap: (int i) => print('click index=$i'),
        ));
  }
}
