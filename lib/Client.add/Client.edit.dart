import 'package:bms_new/Users/user.page.dart';
import 'package:bms_new/teampage/widget/text.field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ClientEdit extends StatefulWidget {
  const ClientEdit({super.key});

  @override
  State<ClientEdit> createState() => _ClientEditState();
}

class _ClientEditState extends State<ClientEdit> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _universitynameController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        title: Text(
          "Client Edit",
          style: GoogleFonts.montserrat(color: Colors.white),
        ),
      ),
      body: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
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
                        controller: _nameController,
                        labele: 'Edit Name',
                        icon: const Icon(Icons.person_3_sharp)),
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
                            controller: _emailController,
                            labele: 'Edit Email',
                            icon: const Icon(Icons.email_sharp)),
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
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: phoneNumber(),
                    ),
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
                            controller: _universitynameController,
                            labele: 'Edit University Name',
                            icon: const Icon(Icons.school_sharp)),
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
                    child: teamPageText(
                        controller: _passwordController,
                        labele: 'Edit Password',
                        icon: const Icon(Icons.password_sharp)),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(21, 101, 192, 1),
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                        child: Text(
                          "Submit",
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 200,
                ),
              ],
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     const SizedBox(
            //       width: 450,
            //     ),
            //     Expanded(
            //       child: Padding(
            //         padding: const EdgeInsets.all(8.0),
            //         child: Center(
            //             // child: teamPageText()
            //             ),
            //       ),
            //     ),
            //     const SizedBox(
            //       width: 450,
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}

ClientEdit clientAdd() {
  return const ClientEdit();
}
