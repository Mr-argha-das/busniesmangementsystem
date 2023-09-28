import 'package:bms_new/teampage/widget/text.field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ClientAdd extends StatefulWidget {
  const ClientAdd({super.key});

  @override
  State<ClientAdd> createState() => _ClientAddState();
}

class _ClientAddState extends State<ClientAdd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        title: Text(
          "Client Add",
          style: GoogleFonts.montserrat(color: Colors.white),
        ),
      ),
      body: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
                    // child: teamPageText(),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                          // child: teamPageText(),
                          )),
                ),
                const SizedBox(
                  width: 200,
                ),
              ],
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
                    // child: teamPageText(),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                          // child: teamPageText(),
                          )),
                ),
                const SizedBox(
                  width: 200,
                ),
              ],
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
                    // child: teamPageText(),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                          // child: teamPageText(),
                          )),
                ),
                const SizedBox(
                  width: 200,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 450,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                        // child: teamPageText()
                        ),
                  ),
                ),
                const SizedBox(
                  width: 450,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
