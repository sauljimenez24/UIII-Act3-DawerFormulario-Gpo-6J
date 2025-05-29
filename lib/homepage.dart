import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.2,
        title: Text("Saullll Jimenez "),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 233, 166, 22),
        actions: <Widget>[
          InkWell(
            onTap: null,
            child: new IconButton(
              icon: Icon(
                Icons.search,
                color: const Color.fromARGB(255, 0, 0, 0),
              ), onPressed: () {  },
            ),
          ),
          InkWell(
            onTap: null,
            child: new IconButton(
              icon: Icon(
                Icons.settings,
                color: const Color.fromARGB(255, 0, 0, 0),
              ), onPressed: () {  },
            ),
          ),
        ],
      ),
      drawer: Drawer(

        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: const Color.fromARGB(255, 16, 149, 211)),
              accountName: Text("Saul Jimenez No 1222"),
              accountEmail: Text("saul89496@gmail.com"),
                 currentAccountPicture: GestureDetector(
                 child: CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 178, 22, 218),
                   radius: 130,
           
            child: CircleAvatar(
              radius: 120,
              backgroundImage: NetworkImage(
                  'https://raw.githubusercontent.com/sauljimenez24/UIIIacitivdad2/refs/heads/main/neymar.jpg'),
            ),
          ),
                ),

              ),
              InkWell(
              onTap: (){},
              child: ListTile(
                onTap: (){Navigator.popAndPushNamed(context, "/home");},
                leading: Icon(Icons.home, color: const Color.fromARGB(255, 235, 147, 15)),
                title: Text("Home Page"),
              ),
            ),
            
            

            
            
          ],
        ),

      ),
    );
  }
}