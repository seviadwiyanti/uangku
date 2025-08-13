import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({super.key});

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  bool isExpense = true;
  List<String> list = ['Food', 'Transport', 'Shopping'];
  late String dropdownValue = list.first;
  TextEditingController dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Transaction'),
      ),
      body: SingleChildScrollView(
          child: SafeArea(
              child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Switch(
                value: isExpense,
                onChanged: (bool value) {
                  setState(() {
                    isExpense = value;
                  });
                },
                inactiveTrackColor: Colors.green[200],
                inactiveThumbColor: Colors.green,
                activeColor: Colors.red,
              ),
              Text(
                isExpense ? ' Expense' : 'Income',
                style: GoogleFonts.montserrat(fontSize: 14),
              )
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: UnderlineInputBorder(), labelText: "Amount"),
            ),
          ),
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Category',
              style: GoogleFonts.montserrat(fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: DropdownButton<String>(
                value: dropdownValue,
                isExpanded: true,
                icon: Icon(Icons.arrow_downward),
                items: list.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? value) {}),
          ),
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              readOnly: true,
              controller: dateController,
              decoration: InputDecoration(labelText: "Enter Date"),
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2101),
                );
                if (pickedDate != null) {
                  String formattedDate =
                      DateFormat('y-MM-dd').format(pickedDate);

                  dateController.text =
                      formattedDate; // set the value of the text field
                }
              },
            ),
          ),
          SizedBox(height: 25),
          Center(
            child: ElevatedButton(
              onPressed: () {
              },
              child: Text('Save'),
            ),
          ),
        ],
      ))),
    );
  }
}
