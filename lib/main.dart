import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Tab> myTab = [
    const Tab(
      text: "Tab 1",
      icon: Icon(Icons.add_a_photo),
    ),
    const Tab(
      icon: Icon(Icons.ac_unit_outlined),
    ),
    const Tab(
      text: "Tab 3",
    ),
    Tab(
      child: Container(
        height: 35,
        width: 35,
        child: const Image(
          image: NetworkImage("https://picsum.photos/200"),
        ),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        initialIndex: 1,
        length: myTab.length,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("Tab Bar Widget"),
            bottom: TabBar(
              tabs: myTab,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.black38,
              labelStyle: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
              unselectedLabelStyle: const TextStyle(
                fontWeight: FontWeight.normal,
              ),
              // indicatorColor: Colors.amber,
              // indicatorWeight: 5,
              // indicatorPadding: EdgeInsets.all(10),
              indicator: BoxDecoration(
                //argument indicatorColor, indicatorPadding, widht dan height akan diabaikan
                color: Colors.amber,
                borderRadius: BorderRadius.circular(16),
                border: const Border(
                  bottom: BorderSide(
                    color: Colors.black,
                    width: 5,
                  ),
                ),
              ),
            ),
          ),
          body: const TabBarView(
            //list children yang ada pada TabBarView harus sama dengan length property dari DefaultTabController
            children: [
              Center(
                child: Text(
                  "Tab 1",
                  style: TextStyle(fontSize: 50),
                ),
              ),
              Center(
                child: Text(
                  "Tab 2",
                  style: TextStyle(fontSize: 50),
                ),
              ),
              Center(
                child: Text(
                  "Tab 3",
                  style: TextStyle(fontSize: 50),
                ),
              ),
              Center(
                child: Text(
                  "Tab 4",
                  style: TextStyle(fontSize: 50),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
