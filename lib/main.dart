import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('Hi mom 😂'),
        ),
        body: Stack(
            children: [
              Align(
                child: Icon(Icons.verified_user, size: 100, color: Colors.blue),
                alignment: Alignment.topRight,
              ),

              Center(
                child: Container(
                  child: Text(
                    'This is a Container',
                    textScaleFactor: 2,
                    style: TextStyle(color: Colors.white),
                  ),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue,
                    boxShadow: [
                      BoxShadow(color: Colors.blue, spreadRadius: 4),
                    ],
                  ),
                  height: 50,
                ),
              ),
            ],
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Hello');
          },
          child: const Icon(Icons.add),
        ),

        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),

        drawer: Drawer(
          child: ListView(
            children: const [
              DrawerHeader(
                child: Text('Drawer Header'),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text('Messages'),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
