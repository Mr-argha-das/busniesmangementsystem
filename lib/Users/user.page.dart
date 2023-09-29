import 'package:bms_new/teampage/widget/text.field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class Users extends StatefulWidget {
  const Users({super.key});

  @override
  State<Users> createState() => _UsersState();
}

class _UsersState extends State<Users> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(21, 101, 192, 1),
        title: Text(
          "User Roles",
          style: GoogleFonts.montserrat(color: Colors.white),
        ),
      ),
      body: Form(
        child: Column(
          key: _formkey,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                height: 150,
                width: 150,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 3, 3, 3),
                  shape: BoxShape.circle,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person_2_outlined,
                      size: 55,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
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
                        labele: 'Name',
                        icon: Icon(Icons.person_2_sharp)),
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
                            labele: 'Email',
                            icon: Icon(Icons.email_sharp)),
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
                        labele: 'Password',
                        icon: Icon(Icons.password_sharp)),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: phoneNumber(),
                  ),
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
                  width: 210,
                ),
                Expanded(
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(21, 101, 192, 1),
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                            child: Text("Submit",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white))),
                      )),
                ),
                const SizedBox(
                  width: 200,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Phonenumber extends StatefulWidget {
  @override
  _PhonenumberState createState() => _PhonenumberState();
}

class _PhonenumberState extends State<Phonenumber> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController controller = TextEditingController();
  String initialCountry = 'IN';
  var number = PhoneNumber(isoCode: 'IN');

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: Colors.grey.shade700, width: 1),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 0,
                    blurRadius: 10,
                    offset: Offset(0, 4))
              ]),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 25,
              right: 16,
            ),
            child: InternationalPhoneNumberInput(
              onInputChanged: (PhoneNumber number) {
                print(number.phoneNumber);
              },
              onInputValidated: (bool value) {
                print(value);
              },
              selectorConfig: const SelectorConfig(
                selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
              ),
              ignoreBlank: false,
              autoValidateMode: AutovalidateMode.disabled,
              selectorTextStyle: const TextStyle(color: Colors.black),
              initialValue: number,
              textFieldController: controller,
              inputDecoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF000000)),
                      borderRadius: BorderRadius.circular(15))),
              formatInput: true,
              keyboardType: const TextInputType.numberWithOptions(
                  signed: true, decimal: true),
              // inputBorder: const OutlineInputBorder(),
              onSaved: (PhoneNumber number) {
                print('On Saved: $number');
              },
            ),
          )),
    );
  }

  void getPhoneNumber(String phoneNumber) async {
    var number =
        await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber, 'IN');

    setState(() {
      this.number = number;
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

Phonenumber phoneNumber() {
  return Phonenumber();
}

Users users() {
  return Users();
}
