import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final nameController = TextEditingController();
  final surnameController = TextEditingController();
  var gender = 'male';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ลงทะเบียน')),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              buildTextField(),
              buildRadio(),
              ElevatedButton(
                onPressed: () {
                  print('Name: ${nameController.text} ${surnameController.text}');
                   print('Gender: ${gender}');
                },
                child: Text('บันทึก'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildRadio() => Column(
    children: [
      RadioListTile(
        title: Text('ชาย'),
        value: 'male',
        groupValue: gender,
        onChanged: (value) => setState(() => gender = value.toString()),
        ),
        RadioListTile(
        title: Text('หญิง'),
        value: 'female',
        groupValue: gender,
        onChanged: (value) => setState(() => gender = value.toString()),
        ),
    ],
  );

  Widget buildTextField() => Column(
    children: [
      TextField(
        decoration: InputDecoration(labelText: 'ชื่อ'),
        maxLength: 50,
        keyboardType: TextInputType.name,
        controller: nameController,
      ),
      TextField(
        decoration: InputDecoration(labelText: 'นามสกุล'),
        maxLength: 50,
        keyboardType: TextInputType.name,
        controller: surnameController,
      ),
    ],
  );
}
