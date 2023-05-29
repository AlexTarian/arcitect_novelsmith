import 'package:arcitect_novelsmith/views/generator_info.dart';
import 'package:flutter/material.dart';
import 'package:arcitect_novelsmith/constants.dart';
import 'package:arcitect_novelsmith/components/custom_app_bar.dart';
import 'package:arcitect_novelsmith/components/nav_menu.dart';
import 'package:arcitect_novelsmith/components/icon_box_button.dart';
import 'package:arcitect_novelsmith/views/character_list.dart';
import 'package:arcitect_novelsmith/views/story_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavDrawer(),
      drawerEnableOpenDragGesture: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(85.0),
        child: Builder(
            builder: (context) {
              return customAppBar(
                  iconR: Icons.help,
                  onPressedR: () {

                  }
              );
            }
        ),
      ),
      body: SafeArea(
        minimum: EdgeInsets.all(20.0),
        child: Center(
          child: Container(
            height: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Theme.of(context).scaffoldBackgroundColor,
                    Theme.of(context).primaryColorLight,
                    Theme.of(context).primaryColorDark,
                  ],
                )
            ),
            child: Column(
              children: <Widget>[
                SizedBox(height: 20.0),
                Text('DASHBOARD',
                  style: TextStyle(
                    fontFamily: 'PermanentMarker',
                    fontSize: 50.0,
                  ),
                ),
                SizedBox(height: 30.0),
                GestureDetector(
                  child: IconBoxButton(
                    icon: Icons.lightbulb,
                    text: 'Story Generator',
                  ),
                  onTap: () {
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) => const GeneratorInfoScreen()));
                  },
                ),
                SizedBox(height: 30.0),
                GestureDetector(
                  child: IconBoxButton(
                      icon: Icons.person,
                      text: 'Characters',
                  ),
                  onTap: () {
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) => const CharacterListScreen()));
                  },
                ),
                SizedBox(height: 30.0),
                GestureDetector(
                  child: IconBoxButton(
                    icon: Icons.list,
                    text: 'Stories',
                  ),
                  onTap: () {
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) => const StoryListScreen()));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}