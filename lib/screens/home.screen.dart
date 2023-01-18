import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('K-Stores'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
              accountName: Text('Kanai Wamulwange'),
              accountEmail: Text('ceo@kanaitech.com'),
              decoration: BoxDecoration(color: Colors.red),
            ),

            // Drawer Body
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.home),
                title: Text('Home Page'),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text('My Account'),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.shopping_basket),
                title: Text('My Orders'),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.dashboard),
                title: Text('Categories'),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.favorite),
                title: Text('Favorites'),
              ),
            ),

            Divider(),

            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text('Categories'),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.help),
                title: Text('Categories'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
