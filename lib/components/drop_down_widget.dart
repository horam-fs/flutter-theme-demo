import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget();

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _DropDownWidgetState extends State<DropDownWidget> {
  String dropdownValue = 'First Item';

  final List<String> _items = <String>[
    'First Item',
    'Second Item',
    'Third Item',
    'Forth Item',
  ];

  @override
  Widget build(BuildContext context) => DropdownButton<String>(
        value: dropdownValue,
        icon: const Icon(Icons.arrow_drop_down),
        elevation: 16,
        underline: Container(
          height: 2,
          color: Colors.black,
        ),
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        items: _items
            .map<DropdownMenuItem<String>>(
                (String value) => DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    ))
            .toList(),
      );
}
