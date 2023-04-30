import 'package:flutter/material.dart';
import 'package:arcitect_novelsmith/constants.dart';
import 'package:arcitect_novelsmith/components/custom_app_bar.dart';
import 'package:arcitect_novelsmith/components/nav_menu.dart';
import 'package:arcitect_novelsmith/components/icon_box_button.dart';
import 'package:arcitect_novelsmith/components/stat_display.dart';
import 'package:arcitect_novelsmith/views/character_list.dart';
import 'package:arcitect_novelsmith/views/story_list.dart';
import 'package:arcitect_novelsmith/components/form_field.dart';

class CharacterDetailScreen extends StatefulWidget {
  const CharacterDetailScreen({super.key,
    required this.strength,
    required this.dexterity,
    required this.constitution,
    required this.intelligence,
    required this.wisdom,
    required this.charisma,
  });

  final TextEditingController strength;
  final TextEditingController dexterity;
  final TextEditingController constitution;
  final TextEditingController intelligence;
  final TextEditingController wisdom;
  final TextEditingController charisma;

  @override
  State<CharacterDetailScreen> createState() => _CharacterDetailScreenState();
}

class _CharacterDetailScreenState extends State<CharacterDetailScreen> {
  int stre = 0;
  int dext = 0;
  int cons = 0;
  int inte = 0;
  int wisd = 0;
  int char = 0;

  @override
  void initState() {
    stre = (widget.strength.text == '' ? 0 : int.tryParse(widget.strength.text))!;
    dext = (widget.dexterity.text == '' ? 0 : int.tryParse(widget.dexterity.text))!;
    cons = (widget.constitution.text == '' ? 0 : int.tryParse(widget.constitution.text))!;
    inte = (widget.intelligence.text == '' ? 0 : int.tryParse(widget.intelligence.text))!;
    wisd = (widget.wisdom.text == '' ? 0 : int.tryParse(widget.wisdom.text))!;
    char = (widget.charisma.text == '' ? 0 : int.tryParse(widget.charisma.text))!;
    super.initState();
  }

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
            ),
            ),
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
                            builder: (context) => const CharacterListScreen()));
                  },
                ),
                const SizedBox(height: 20.0),
                const Text(
                  'CHARACTER',
                  style: TextStyle(
                    fontFamily: 'PermanentMarker',
                    fontSize: 50.0,
                  ),
                ),
                const SizedBox(height: 30.0),
                SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * .70,
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.width * .9,
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(0)),
                            border: Border.all(
                                color: Theme.of(context).primaryColor, width: 3),
                          ),
                        ),
                        const SizedBox(height: 30.0),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          // height: MediaQuery.of(context).size.width * .9,
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(0)),
                            border: Border.all(
                                color: Theme.of(context).primaryColor, width: 3),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              StatDisplay(
                                label: "Strength",
                                score: widget.strength,
                              ),
                              StatDisplay(
                                  label: "Dexterity",
                                  score: widget.dexterity
                              ),
                              StatDisplay(
                                  label: "Constitution",
                                  score: widget.constitution
                              ),
                              StatDisplay(
                                  label: "Intelligence",
                                  score: widget.intelligence
                              ),
                              StatDisplay(
                                  label: "Wisdom",
                                  score: widget.wisdom
                              ),
                              StatDisplay(
                                  label: "Charisma",
                                  score: widget.charisma
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 30.0),
                        CustomFormField(label: 'Name'),
                        const SizedBox(height: 15.0),
                        CustomFormField(label: 'Race'),
                        const SizedBox(height: 15.0),
                        CustomFormField(label: 'Age'),
                        const SizedBox(height: 15.0),
                        CustomFormField(label: 'Build'),
                        const SizedBox(height: 15.0),
                        CustomFormField(label: 'Height'),
                        const SizedBox(height: 15.0),
                        CustomFormField(label: 'Weight'),
                        const SizedBox(height: 15.0),
                        CustomFormField(label: 'Ethnicity'),
                        const SizedBox(height: 15.0),
                        CustomFormField(label: 'Birthplace'),
                        const SizedBox(height: 15.0),
                        CustomFormField(label: 'Citizenship'),
                        const SizedBox(height: 15.0),
                        CustomFormField(label: 'Voice'),
                        const SizedBox(height: 15.0),
                        CustomFormField(label: 'Accent'),
                        const SizedBox(height: 15.0),
                        CustomFormField(label: 'Tattoos/Piercings/Scars'),
                        const SizedBox(height: 15.0),
                        CustomFormField(label: 'Special'),
                        const SizedBox(height: 15.0),
                        CustomFormField(label: 'Religion'),
                        const SizedBox(height: 15.0),
                        CustomFormField(label: 'Personality'),
                        const SizedBox(height: 15.0),
                        CustomFormField(label: 'Style'),
                        const SizedBox(height: 15.0),
                        CustomFormField(label: 'Color Scheme'),
                        const SizedBox(height: 15.0),
                        CustomFormField(label: 'Catchphrase'),
                        const SizedBox(height: 15.0),
                        CustomFormField(label: 'Social Class'),
                        const SizedBox(height: 15.0),
                        CustomFormField(label: 'Occupation'),
                        const SizedBox(height: 15.0),
                        CustomFormField(label: 'Reputation'),
                        const SizedBox(height: 15.0),
                        CustomFormField(label: 'Hobby'),
                        const SizedBox(height: 15.0),
                        CustomFormField(label: 'Habits'),
                        const SizedBox(height: 15.0),
                        CustomFormField(label: 'Family'),
                        const SizedBox(height: 15.0),
                        CustomFormField(label: 'Friends'),
                        const SizedBox(height: 15.0),
                        CustomFormField(label: 'Relationship'),
                        const SizedBox(height: 15.0),
                        CustomFormField(label: 'Morality'),
                        const SizedBox(height: 15.0),
                        CustomFormField(label: 'Backstory'),
                        const SizedBox(height: 15.0),
                        CustomFormField(label: 'Past Defining Moment'),
                        const SizedBox(height: 15.0),
                        CustomFormField(label: 'Secret'),
                        const SizedBox(height: 15.0),
                        CustomFormField(label: 'Defining Positive Trait'),
                        const SizedBox(height: 15.0),
                        CustomFormField(label: 'Character Flaw'),
                        const SizedBox(height: 15.0),
                        CustomFormField(label: 'Strengths'),
                        const SizedBox(height: 15.0),
                        CustomFormField(label: 'Weaknesses'),
                        const SizedBox(height: 15.0),
                        CustomFormField(label: 'Likes'),
                        const SizedBox(height: 15.0),
                        CustomFormField(label: 'Dislikes'),
                        const SizedBox(height: 15.0),
                        CustomFormField(label: 'Quirks'),
                        const SizedBox(height: 15.0),
                        CustomFormField(label: 'Phobias'),
                        const SizedBox(height: 15.0),
                        CustomFormField(label: 'Source of Identity'),
                        const SizedBox(height: 15.0),
                        CustomFormField(label: 'Facade'),
                        const SizedBox(height: 15.0),
                        CustomFormField(label: 'True Self'),
                        const SizedBox(height: 15.0),
                        CustomFormField(label: 'Internal Contridiction'),
                        const SizedBox(height: 15.0),
                        CustomFormField(label: 'Goal'),
                        const SizedBox(height: 15.0),
                        CustomFormField(label: 'Superficial Motivation'),
                        const SizedBox(height: 15.0),
                        CustomFormField(label: 'Deep Motivation'),
                        const SizedBox(height: 15.0),
                        CustomFormField(label: 'Defining Moment in Story'),
                        const SizedBox(height: 15.0),
                        CustomFormField(label: 'End of Arc'),
                        const SizedBox(height: 15.0),
                        CustomFormField(label: 'Fate'),
                        const SizedBox(height: 15.0),
                        CustomFormField(label: 'Notes'),
                      ],
                    ),
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


