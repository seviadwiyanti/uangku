import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //dashboard total income dan expanse
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Icon(Icons.download,
                              color: Colors.blueAccent[400]),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(4)),
                        ),
                        SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Income",
                              style: GoogleFonts.montserrat(
                                  color: Colors.white, fontSize: 12),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Rp. 3.800.00",
                              style: GoogleFonts.montserrat(
                                  color: Colors.white, fontSize: 14),
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          child: Icon(Icons.upload, color: Colors.red),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(4)),
                        ),
                        SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Expense",
                              style: GoogleFonts.montserrat(
                                  color: Colors.white, fontSize: 12),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Rp. 3.800.00",
                              style: GoogleFonts.montserrat(
                                  color: Colors.white, fontSize: 14),
                            )
                          ],
                        )
                      ],
                    ),
                  ]),
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.cyan[200],
                  borderRadius: BorderRadius.circular(15)),
            ),
          ),

          // Text Transaction
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              "Transactions",
              style: GoogleFonts.montserrat(
                  fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Card(
              elevation: 10,
              child: ListTile(
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.delete),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.edit)
                  ],
                ),
                title: Text("Rp.20.00"),
                subtitle: Text("Makan Siang"),
                leading: Container(
                  child: Icon(Icons.upload, color: Colors.red),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4)),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Card(
              elevation: 10,
              child: ListTile(
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.delete),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.edit)
                  ],
                ),
                title: Text("Rp.20.000.000"),
                subtitle: Text("Gaji Bulanan"),
                leading: Container(
                  child: Icon(Icons.upload, color: Colors.green),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4)),
                ),
              ),
            ),
          )
        ],
        
      )),
    );
  }
}
