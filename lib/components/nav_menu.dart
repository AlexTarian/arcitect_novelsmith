import 'package:flutter/material.dart';
import 'package:arcitect_novelsmith/constants.dart';
import 'package:arcitect_novelsmith/views/home_screen.dart';
import 'package:arcitect_novelsmith/views/character_list.dart';
import 'package:arcitect_novelsmith/views/story_list.dart';
import 'package:arcitect_novelsmith/views/settings_screen.dart';
import 'package:arcitect_novelsmith/views/about_screen.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          SizedBox(
            height: 117.0,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: themeColor,
              ),
              child: const Center(
                child: Text(
                  'Main Menu',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
          ),
          ListTile(
            iconColor: themeColor,
            leading: Icon(
              Icons.home,
              color: Theme.of(context).primaryColor,
            ),
            title: const Text('Dashboard',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => const HomeScreen()));
            },
          ),
          ListTile(
            iconColor: themeColor,
            leading: Icon(
              Icons.person,
              color: Theme.of(context).primaryColor,
            ),
            title: const Text('Characters',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => const CharacterListScreen()));
            },
          ),
          ListTile(
            iconColor: themeColor,
            leading: Icon(
              Icons.book,
              color: Theme.of(context).primaryColor,
            ),
            title: const Text('Story Blueprints',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => const StoryListScreen()));
            },
          ),
          ListTile(
            iconColor: themeColor,
            leading: Icon(
              Icons.settings,
              color: Theme.of(context).primaryColor,
            ),
            title: const Text('Settings',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => const SettingsScreen()));
            },
          ),
          ListTile(
            iconColor: themeColor,
            leading: Icon(
              Icons.info,
              color: Theme.of(context).primaryColor,
            ),
            title: const Text('About This App',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => const AboutScreen()));
            },
          ),
        ],
      ),
    );
  }
}