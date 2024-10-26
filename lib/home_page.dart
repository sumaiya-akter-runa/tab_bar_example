import 'package:flutter/material.dart';
import 'package:tab_bar_example/camera.dart';
import 'package:tab_bar_example/contacts.dart';
import 'package:tab_bar_example/home.dart';
import 'package:tab_bar_example/settings.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("Tab Bar",style: TextStyle(color: Colors.white),
          ),
          bottom:  const TabBar(
            indicatorColor: Colors.white,
              labelColor: Colors.white,

         tabs: [
           Tab(
             icon: Icon(Icons.home,
               color: Colors.white,),
             text: "Home",
           ),
            Tab(
              icon: Icon(Icons.contacts,
                color: Colors.white,),
              text: "Contact",
            ),

            Tab(
              icon: Icon(Icons.camera,
                color: Colors.white,),
              text: "Camera",
            ),
            Tab(
              icon: Icon(Icons.settings,
                color: Colors.white,),
              text: "settings",
            ),
          ],
          ),
        ),
        body: TabBarView(
          children: [

            Home(),
            Contacts(),

            Camera(),

            Settings()

          ],
        ),

      ),
    );
  }
}
