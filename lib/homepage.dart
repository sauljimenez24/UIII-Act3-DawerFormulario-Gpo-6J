import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.2,
        title: Text("Saul Jimenez"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 219, 180, 9),
        actions: <Widget>[
          InkWell(
            onTap: null,
            child: IconButton(
              icon: Icon(
                Icons.search,
                color: const Color.fromARGB(255, 0, 0, 0),
              ), onPressed: () {  },
            ),
          ),
          InkWell(
            onTap: null,
            child: IconButton(
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
              decoration: BoxDecoration(color: const Color.fromARGB(255, 235, 114, 22)),
              accountName: Text("Saul Jimenez No 1222"),
              accountEmail: Text("a.22308051281222@cbtis128.edu.mx"),

              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 210, 100, 17),
                  child: CircleAvatar(
            radius: 130,
            backgroundColor: Colors.red,
            child: CircleAvatar(
              radius: 120,
              backgroundImage: NetworkImage(
                  'https://raw.githubusercontent.com/sauljimenez24/IMG_ACT4/refs/heads/main/ney_perfil.jpg'),

            ),
          ),
                  ),
              ),
            ),
             InkWell(
              onTap: (){},
              child: ListTile(
                onTap: (){Navigator.popAndPushNamed(context, "/home");},
                leading: Icon(Icons.home, color: const Color.fromARGB(255, 37, 108, 183)),
                title: Text("Pagina Inicio"),
              ),
            ),
            InkWell(
              onTap: null,
              child: ListTile(
                onTap: (){Navigator.popAndPushNamed(context, "/perfil");},
                leading: Icon(Icons.person, color: Colors.black),
                title: Text("Perfil"),
              ),
            ),
             InkWell(
              onTap: null,
              child: ListTile(
                onTap: (){Navigator.pushNamed(context, "/refacciones");},
                leading: Icon(Icons.shopping_basket, color: Colors.red),
                title: Text("Refacciones"),
              ),
            ),
             Divider(),
            InkWell(
              onTap: null,
              child: ListTile(
                leading: Icon(Icons.help, color: Colors.green),
                title: Text("About"),
              ),
            ),
            InkWell(
              onTap: null,
              child: ListTile(
                leading: Icon(
                  Icons.power_settings_new,
                  color: Colors.black,
                ),
                title: Text("Log out"),
              ),
            )
          ],
        ),
      ),
          body: Center(
        child: Text("Home Page"),
      ),
    );
  }
}   
            