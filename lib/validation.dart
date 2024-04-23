import 'package:flutter/material.dart';

class TextValidation extends StatefulWidget {
  const TextValidation({super.key});

  @override
  State<TextValidation> createState() => _TextValidationState();
}

class _TextValidationState extends State<TextValidation> {
  final TextEditingController _NameController = TextEditingController();
  final TextEditingController _MobileController = TextEditingController();

  bool _validationName = false;
  bool _validationMobile = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Validation"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            TextFormField(
              controller: _NameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: 'Name',
                hintText: 'Enter Name',
                errorText: _validationName ? "Name can't Be Empty " : null,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: _MobileController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: 'Mobile',
                hintText: 'Enter Number',
                errorText: _validationMobile ? "Number can't Be Empty " : null,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
              ),
              onPressed: () {
                setState(() {
                  _validationName = _NameController.text.isEmpty;
                  _validationMobile = _MobileController.text.isEmpty;
                  if (!_validationName && !_validationMobile) {
                    print('--------------->Save Button Clicked');
                    _save();
                  }
                });
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }

  void _save() async {
    print('--------------->Save Method');
    print('------------------> Name : ${_NameController.text}');
    print('------------------>Mobile No : ${_MobileController.text}');
  }
}
