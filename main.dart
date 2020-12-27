import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'Category.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = Container(
      height: 250.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/Christmas-Wishes-Feature.jpg'),
          AssetImage('images/maxresdefault.jpg'),
          AssetImage('images/second-final.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 900),
        indicatorBgPadding: 0.0,
        dotBgColor: Colors.white.withOpacity(0.0),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('LAGORII'),
        backgroundColor: Colors.redAccent,
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_basket,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            //header
            UserAccountsDrawerHeader(
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                ),
              ),
              decoration: BoxDecoration(color: Colors.redAccent),
              accountName: Text('xyz'),
              accountEmail: Text('xyz.com'),
            ),
            //list
            FlatButton(
              onPressed: () {},
              child: InkWell(
                child: ListTile(
                  title: Text('HomePage'),
                  leading: Icon(Icons.home),
                  // leading: Icon(Icons.),
                  //leading: Icon(Icons.home),
                ),
              ),
            ),
            FlatButton(
              onPressed: () {},
              child: InkWell(
                child: ListTile(
                  title: Text('BOYS'),
                  leading: Icon(Icons.person),
                  // leading: Icon(Icons.),
                  //leading: Icon(Icons.home),
                ),
              ),
            ),
            FlatButton(
              onPressed: () {},
              child: InkWell(
                child: ListTile(
                  title: Text('GIRLS'),
                  //leading:
                  leading: Icon(Icons.person),
                  //leading: Icon(Icons.home),
                ),
              ),
            ),
            FlatButton(
              onPressed: () {},
              child: InkWell(
                child: ListTile(
                  title: Text('BABIES'),
                  leading: Icon(Icons.child_care),
                  // leading: Icon(Icons.),
                  //leading: Icon(Icons.home),
                ),
              ),
            ),
            FlatButton(
              onPressed: () {},
              child: InkWell(
                child: ListTile(
                  title: Text('BRANDS'),
                  leading: Icon(Icons.dashboard),
                  // leading: Icon(Icons.),
                  //leading: Icon(Icons.home),
                ),
              ),
            ),

            FlatButton(
              onPressed: () {},
              child: InkWell(
                child: ListTile(
                  title: Text('SETTINGS'),
                  leading: Icon(Icons.settings),
                  // leading: Icon(Icons.),
                  //leading: Icon(Icons.home),
                ),
              ),
            ),
            SizedBox(
              height: 280.0,
            ),
            FlatButton(
              onPressed: () {},
              child: InkWell(
                child: ListTile(
                  title: Text('ABOUT US'),
                  leading: Icon(Icons.help),
                  // leading: Icon(Icons.),
                  //leading: Icon(Icons.home),
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          image_carousel,
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Center(
              child: Text(
                'EXPLORE OUR PRODUCTS',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 35.00,
                    fontWeight: FontWeight.w900,
                    color: Colors.deepOrangeAccent),
              ),
            ),
          ),
          Category(),
          Container(
            color: Colors.redAccent,
            margin: EdgeInsets.only(top: 15.00),
            width: double.infinity,
            height: 80.0,
          ),
        ],
      ),
    );
  }
}
