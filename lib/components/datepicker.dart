import 'package:flutter/material.dart';
class Worksheet extends StatefulWidget {
  const Worksheet({super.key});

  @override
  State<Worksheet> createState() => _WorksheetState();
}

class _WorksheetState extends State<Worksheet> {




  DateTime _pickupDate = DateTime.now();

  DateTime _dropDate = DateTime.now().add(Duration(days: 1));

  Future<void> _selectDate(BuildContext context, bool isPickupDate) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: isPickupDate ? _pickupDate : _dropDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(DateTime.now().year + 1),
    );

    if (picked != null) {
      setState(() {
        if (isPickupDate) {
          _pickupDate = picked;
          print(_pickupDate);
        } else {
          _dropDate = picked;
          print(_dropDate);
        }
      });
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

      Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Pickup Date:',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                '${_pickupDate.toLocal()}'.split(' ')[0],
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => _selectDate(context, true),
                child: Text('Select Pickup Date'),
              ),
              SizedBox(height: 40),
              Text(
                'Drop Date:',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                '${_dropDate.toLocal()}'.split(' ')[0],
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => _selectDate(context, false),
                child: Text('Select Drop Date'),
              ),
            ],
          ),
        ),
      ),
    );



  }
}
