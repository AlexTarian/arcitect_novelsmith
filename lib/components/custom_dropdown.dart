// import 'package:flutter/material.dart';
//
// class CustomDropDown extends StatelessWidget {
//   const CustomDropDown(
//       {super.key,
//         required this.label,
//         required this.textController,
//         required this.list,
//         required this.onChanged});
//
//   final String label;
//   final TextEditingController textController;
//   final List<String> list;
//   final  void Function(String?)? onChanged;
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         Text(label,
//           style: TextStyle(
//             color: Theme.of(context).primaryColor,
//             fontSize: 20.0,
//             fontWeight: FontWeight.w700,
//           ),
//         ),
//         const SizedBox(height: 10.0),
//         Container(
//           padding: const EdgeInsets.all(5.0),
//           decoration: BoxDecoration(
//             border: Border.all(
//                 width: 2, color: Theme.of(context).primaryColor),
//           ),
//           child: DropdownButton<String>(
//             dropdownColor: Theme.of(context).primaryColor,
//             isExpanded: true,
//             value: textController.text,
//             elevation: 16,
//             style: TextStyle(
//                 fontSize: 20.0, color: Theme.of(context).primaryColorLight),
//             underline: Container(
//               width: double.infinity,
//               height: 2,
//               color: Colors.transparent,
//             ),
//             onChanged: onChanged,
//             selectedItemBuilder: (BuildContext context) { //<-- SEE HERE
//               return list.map((String value) {
//                 return Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Text(
//                       textController.text,
//                       style: TextStyle(
//                           fontSize: 20.0, color: Theme.of(context).primaryColor),
//                     ),
//                   ],
//                 );
//               }).toList();
//             },
//             items: list.map<DropdownMenuItem<String>>((String value) {
//               return DropdownMenuItem<String>(
//                 value: value,
//                 child: Text(value),
//               );
//             }).toList(),
//           ),
//         ),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';

class CustomDropDown extends StatelessWidget {
  const CustomDropDown(
      {super.key,
        required this.label,
        required this.textController,
        required this.list,
        required this.onChanged});

  final String label;
  final TextEditingController textController;
  final List<String> list;
  final  void Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Floating label effect
        AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: EdgeInsets.only(
            top: textController.text == label ? 16.0 : 0.0,
          ),
          child: Text(textController.text == label ? '' : label,
            style: TextStyle(
              fontSize: textController.text == label ? 18.0 : 14.0,
            ),
          ),
        ),
        const SizedBox(height: 8.0),
        // Dropdown menu field
        DropdownButtonFormField<String>(
          value: textController.text,
          decoration: const InputDecoration(
            labelText: '',
            border: OutlineInputBorder(),
          ),
          onChanged: onChanged,
          items: list.map<DropdownMenuItem<String>>((String option) {
            return DropdownMenuItem<String>(
              value: option,
              child: Text(option, style: TextStyle(fontSize: 20.0, color: Theme.of(context).primaryColor)),
            );
          }).toList(),
        ),
      ],
    );
  }
}