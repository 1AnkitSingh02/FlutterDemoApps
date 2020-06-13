import 'package:flutter/material.dart';
import 'package:anime_tracker/home_screen.dart';
import 'package:anime_tracker/menu.dart';
import 'package:anime_tracker/web_view.dart';

void main() => runApp(AnimeTrack());


class AnimeTrack extends StatelessWidget {
  final appTitle = 'Otaku Tracker';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,

      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title),
      backgroundColor: Colors.black54,),
      body: Center(child: Text('Some Anime')),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('User'),
              decoration: BoxDecoration(
                color: Colors.black54,
                shape: BoxShape.rectangle,

//                 image: NetworkImage("https://www.google.com/url?sa=i&url=https%3A%2F%2Ffairytail.fandom.com%2Fwiki%2FNatsu_Dragneel&psig=AOvVaw1xNN0ujTNa-Hgl_wKMuTg_&ust=1586458702018000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCJDg1q3B2egCFQAAAAAdAAAAABAD",)

                


              ),
            ),
            ListTile(
              title: Text('Manga'),
              onTap: () {
                  // Update the state of the app
                // ...
                // Then close the Drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Ongoing'),
              onTap: () {
               
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Completed'),
              onTap: () {
            
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('WatchList'),
              onTap: () {
              
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Friends'),
              onTap: () {
              
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Discover'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(
                  builder: (BuildContext context) => MyWebView(
                    title: "My Anime List,
                    selectedUrl: "https://myanimelist.net/",
                  )));
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Random'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
