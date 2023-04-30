import 'package:arcitect_novelsmith/views/character_detail.dart';
import 'package:arcitect_novelsmith/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:arcitect_novelsmith/constants.dart';
import 'package:arcitect_novelsmith/components/custom_app_bar.dart';
import 'package:arcitect_novelsmith/components/nav_menu.dart';
import 'package:arcitect_novelsmith/components/icon_box_button.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class CharacterListScreen extends StatefulWidget {
  const CharacterListScreen({Key? key}) : super(key: key);

  @override
  State<CharacterListScreen> createState() => _CharacterListScreenState();
}

class _CharacterListScreenState extends State<CharacterListScreen> {
  TextEditingController strength = TextEditingController();
  TextEditingController dexterity = TextEditingController();
  TextEditingController constitution = TextEditingController();
  TextEditingController intelligence = TextEditingController();
  TextEditingController wisdom = TextEditingController();
  TextEditingController charisma = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavDrawer(),
      drawerEnableOpenDragGesture: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(85.0),
        child: Builder(builder: (context) {
          return customAppBar(iconR: Icons.help, onPressedR: () {});
        }),
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
            )),
            child: Column(
              children: <Widget>[
                GestureDetector(
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.arrow_back,
                        color: Theme.of(context).primaryColor,
                        size: 40.0,
                      ),
                      Text(
                        'Back',
                        style: chalk.copyWith(fontSize: 24.0),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                  },
                ),
                const SizedBox(height: 20.0),
                const Text(
                  'CHARACTERS',
                  style: TextStyle(
                    fontFamily: 'PermanentMarker',
                    fontSize: 50.0,
                  ),
                ),
                const SizedBox(height: 20.0),
                GestureDetector(
                  child: IconBoxButton(
                    icon: Icons.add,
                    text: 'Create a Character',
                  ),
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CharacterDetailScreen(
                              strength: strength,
                              dexterity: dexterity,
                              constitution: constitution,
                              intelligence: intelligence,
                              wisdom: wisdom,
                              charisma: charisma,
                            )));
                  },
                ),
                const SizedBox(height: 20.0),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 500.0,
                  child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(0)),
                            border: Border.all(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                          child: ListTile(
                            title: Text('<Name>'),
                            //leading:
                            onTap: () {
                              setState(() {});
                              Alert(
                                context: context,
                                buttons: [
                                  DialogButton(
                                    color: usaflAccent,
                                    child: const Text(
                                      'Delete',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20.0),
                                    ),
                                    onPressed: () {
                                      setState(() {

                                      });
                                      Navigator.pop(context);
                                    },
                                  ),
                                  DialogButton(
                                    color: usaflAccent,
                                    child: const Text(
                                      'Save',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20.0),
                                    ),
                                    onPressed: () {
                                      setState(() {});
                                    },
                                  ),
                                ],
                              ).show();
                            },
                          ),
                        ),
                      );
                    },
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
