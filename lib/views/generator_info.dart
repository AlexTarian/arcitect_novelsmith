import 'package:arcitect_novelsmith/components/form_field.dart';
import 'package:flutter/material.dart';
import 'package:arcitect_novelsmith/constants.dart';
import 'package:arcitect_novelsmith/components/custom_app_bar.dart';
import 'package:arcitect_novelsmith/components/nav_menu.dart';
import 'package:arcitect_novelsmith/components/icon_box_button.dart';
import 'package:arcitect_novelsmith/views/character_list.dart';
import 'package:arcitect_novelsmith/views/story_list.dart';
import 'package:arcitect_novelsmith/components/pageview_layout.dart';
import 'package:arcitect_novelsmith/components/custom_dropdown.dart';
import 'package:arcitect_novelsmith/components/elements_list.dart';

class GeneratorInfoScreen extends StatefulWidget {
  const GeneratorInfoScreen({Key? key}) : super(key: key);

  @override
  State<GeneratorInfoScreen> createState() => _GeneratorInfoScreenState();
}

class _GeneratorInfoScreenState extends State<GeneratorInfoScreen> {
  final PageController controller = PageController(initialPage: 0);
  TextEditingController genreOne = TextEditingController(text: 'Primary Genre');
  TextEditingController genreTwo = TextEditingController(text: 'Secondary Genre (Optional)');
  TextEditingController themeOne = TextEditingController(text: 'Theme');
  TextEditingController themeTwo = TextEditingController();
  List<String> genreListOne = ElementLists().genreOne;
  List<String> genreListTwo = ElementLists().genreTwo;
  List<String> themeList = ElementLists().themes;

  void goToPage(int page) {
    controller.animateToPage(
      page,
      duration: Duration(milliseconds: 500),
      curve: Curves.ease,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavDrawer(),
      drawerEnableOpenDragGesture: false,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(85.0),
        child: Builder(builder: (context) {
          return customAppBar(iconR: Icons.help, onPressedR: () {});
        }),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(20.0),
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
                const SizedBox(height: 20.0),
                const Text(
                  'STORY GENERATOR',
                  style: TextStyle(
                    fontFamily: 'PermanentMarker',
                    fontSize: 50.0,
                  ),
                ),
                const SizedBox(height: 40.0),
                Expanded(
                  child: PageView(
                    controller: controller,
                    children: <Widget>[
                      PageViewLayout(
                        text:
                            'First, let\'s decide on a genre. Select from the first dropdown menu the option to which you gravitate towards most. If your idea blends genres, you may add a secondary genre.',
                        back: () => goToPage(0),
                        forward: () => goToPage(1),
                        child: Column(
                          children: <Widget>[
                            CustomDropDown(
                              label: 'Primary Genre',
                              textController: genreOne,
                              list: genreListOne,
                              onChanged: (String? newValue) {
                                setState(() {
                                  genreOne.text = newValue!;
                                });
                              },
                            ),
                            const SizedBox(height: 20),
                            CustomDropDown(
                              label: 'Secondary Genre (Optional)',
                              textController: genreTwo,
                              list: genreListTwo,
                              onChanged: (String? newValue) {
                                setState(() {
                                  genreTwo.text = newValue!;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      PageViewLayout(
                        text: 'Great! What sort of theme interests you for this story? If you\'re not sure, just pick one that resonates with you. If you have one in mind that isn\'t on the list, you can type one into the \"Custom Theme\" field below.',
                        back: () => goToPage(0),
                        forward: () => goToPage(2),
                        child: Column(
                          children: <Widget>[
                            CustomDropDown(
                              label: 'Theme',
                              textController: themeOne,
                              list: themeList,
                              onChanged: (String? newValue) {
                                setState(() {
                                  themeOne.text = newValue!;
                                });
                              },
                            ),
                            const SizedBox(height: 30),
                            CustomFormField(
                              label: 'Custom Theme',
                              controller: themeTwo,
                              onChanged: (String? newValue) {
                                // setState(() {
                                //   themeOne.text = 'Theme';
                                // });
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
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
