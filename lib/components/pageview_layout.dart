import 'package:flutter/material.dart';

class PageviewLayout extends StatelessWidget {
  const PageviewLayout(
      {super.key,
        required this.text,
        required this.child,
        this.back,
        this.forward,
      });

  final String text;
  final Widget child;
  final void Function()? back;
  final void Function()? forward;


  @override
  Widget build(BuildContext context) {
    return
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(
                text,
                style: const TextStyle(
                  fontSize: 24.0,
                ),
              ),
              const SizedBox(height: 20),
              child,
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40, top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: back,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(Icons.arrow_back, color: Theme.of(context).primaryColor, size: 30),
                      const SizedBox(width: 20),
                      const Text('Back',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: forward,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text('Next',
                        style: TextStyle(
                            fontSize: 30
                        ),
                      ),
                      const SizedBox(width: 20),
                      Icon(Icons.arrow_forward, color: Theme.of(context).primaryColor, size: 30),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      );
  }
}