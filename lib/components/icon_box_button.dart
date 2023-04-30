import 'package:flutter/material.dart';

class IconBoxButton extends StatelessWidget {
  const IconBoxButton({
    required this.icon,
    required this.text,
    this.progress = 0.0,
    this.trailingIcon,
    this.trailingColor,
  });

  final IconData icon;
  final String text;
  final double progress;
  final IconData? trailingIcon;
  final Color? trailingColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 65.0,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(40)),
            border: Border.all(color: Theme.of(context).primaryColor, width: 3),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const SizedBox(width: 20.0),
              Flexible(
                flex: 1,
                child: Icon(icon,
                  color: Theme.of(context).primaryColor,
                  size: 40.0,
                ),
              ),
              Flexible(
                flex: 5,
                child: Center(
                  child: Text(
                    text,
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 30.0,
                      fontFamily: 'PermanentMarker',
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Icon(trailingIcon,
                  color: Theme.of(context).primaryColor,
                  size: 40.0,
                ),
              ),
              const SizedBox(width: 20.0),
            ],
          ),
        ),
      ],
    );
  }
}
