import 'package:flutter/material.dart';
import 'package:arcitect_novelsmith/constants.dart';

class StatDisplay extends StatefulWidget {
  const StatDisplay(
      {super.key,
        required this.label,
        required this.score,
  });

  final String label;
  final TextEditingController score;

  @override
  State<StatDisplay> createState() => _StatDisplayState();
}

class _StatDisplayState extends State<StatDisplay> {
  int level = 0;

  @override
  void initState() {
    level = (widget.score.text == '' ? 0 : int.tryParse(widget.score.text))!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(widget.label, style: labelText),
          Row(
            children: <Widget>[
              GestureDetector(
                  child: Icon(
                      Icons.circle,
                      color: Theme.of(context).primaryColor,
                  ),
                onTap: () {
                    setState(() {
                      level = 1;
                      widget.score.text = level.toString();
                    });
                    print(widget.score.text);
                },
              ),
              const SizedBox(width: 20.0),
              GestureDetector(
                child: Icon(
                    Icons.circle,
                    color: level > 1 ? Theme.of(context).primaryColor : Colors.black45
                ),
                onTap: () {
                  setState(() {
                    level = 2;
                    widget.score.text = level.toString();
                  });
                  print(widget.score.text);
                },
              ),
              const SizedBox(width: 20.0),
              GestureDetector(
                child: Icon(
                    Icons.circle,
                    color: level > 2 ? Theme.of(context).primaryColor : Colors.black45
                ),
                onTap: () {
                  setState(() {
                    level = 3;
                    widget.score.text = level.toString();
                  });
                  print(widget.score.text);
                },
              ),
              const SizedBox(width: 20.0),
              GestureDetector(
                child: Icon(
                    Icons.circle,
                    color: level > 3 ? Theme.of(context).primaryColor : Colors.black45
                ),
                onTap: () {
                  setState(() {
                    level = 4;
                    widget.score.text = level.toString();
                  });
                  print(widget.score.text);
                },
              ),
              const SizedBox(width: 20.0),
              GestureDetector(
                child: Icon(
                    Icons.circle,
                    color: level > 4 ? Theme.of(context).primaryColor : Colors.black45
                ),
                onTap: () {
                  setState(() {
                    level = 5;
                    widget.score.text = level.toString();
                  });
                  print(widget.score.text);
                },
              ),
              const SizedBox(width: 20.0),
            ],
          ),
        ],
      ),
    );
  }
}