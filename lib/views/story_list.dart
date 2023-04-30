import 'package:arcitect_novelsmith/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:arcitect_novelsmith/constants.dart';
import 'package:arcitect_novelsmith/components/custom_app_bar.dart';
import 'package:arcitect_novelsmith/components/nav_menu.dart';
import 'package:arcitect_novelsmith/components/icon_box_button.dart';

class StoryListScreen extends StatefulWidget {
  const StoryListScreen({Key? key}) : super(key: key);

  @override
  State<StoryListScreen> createState() => _StoryListScreenState();
}

class _StoryListScreenState extends State<StoryListScreen> {

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
                GestureDetector(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.arrow_back,
                        color: Theme.of(context).primaryColor,
                        size: 40.0,
                      ),
                      Text('Back',
                        style: chalk.copyWith(fontSize: 24.0),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) => const HomeScreen()));
                  },
                ),
                SizedBox(height: 20.0),
                Text('STORIES',
                  style: TextStyle(
                    fontFamily: 'PermanentMarker',
                    fontSize: 50.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}