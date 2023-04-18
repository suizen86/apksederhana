import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/last_controller.dart';

class LastView extends GetView<LastController> {
  const LastView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'Whangsaff',
          style: TextStyle(fontSize: 23),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.more_vert_outlined)),
            ],
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: DefaultTabController(
            length: 3,
            child: TabBar(
              tabs: [
                Tab(
                  text: 'Chat',
                ),
                Tab(
                  text: 'Status',
                ),
                Tab(
                  text: 'Panggilan',
                ),
              ],
              indicatorColor: Colors.white,
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) => ListTile(
          title: Text('+62 812-3456-123${index + 0}'),
          subtitle: Text("Hello there i'm using Whangsaff"),
          leading: CircleAvatar(
            child: Icon(
              Icons.person,
              color: Colors.white,
            ),
            backgroundColor: Colors.green,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: Icon(Icons.message,color: Colors.white,),
      ),
    );
  }
}
