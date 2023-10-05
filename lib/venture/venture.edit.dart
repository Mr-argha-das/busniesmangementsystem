import 'package:bms_new/teampage/widget/text.field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Venture extends StatefulWidget {
  const Venture({super.key});

  @override
  State<Venture> createState() => _VentureState();
}

class _VentureState extends State<Venture> {
  final ventureController = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  final VentureNamecontroller = TextEditingController();
  final ventureTypeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        title: Text(
          "Edit Venture",
          style: GoogleFonts.montserrat(color: Colors.white),
        ),
      ),
      body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    Center(
                      child: Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(500)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Center(
                                child: Icon(
                                  Icons.house,
                                  color: Colors.white,
                                  size: 55,
                                ),
                              ),
                              Text(
                                "Uploa a logo \n of venture",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                ),
                              )
                            ],
                          )),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: 200,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: teamPageText(
                                controller: VentureNamecontroller,
                                labele: 'Edit Venture',
                                icon: Icon(Icons.home)),
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Expanded(
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: teamPageText(
                                    controller: ventureTypeController,
                                    labele: 'Edit Venture type',
                                    icon: Icon(Icons.type_specimen)),
                              )),
                        ),
                        const SizedBox(
                          width: 200,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 40,
                            width: 120,
                            decoration: BoxDecoration(
                                color: Colors.blue.shade900,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text("Submit",
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ))),
    );
  }
}

Venture addVenture() {
  return Venture();
}
