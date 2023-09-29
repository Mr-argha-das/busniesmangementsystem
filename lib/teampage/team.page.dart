import 'package:bms_new/teampage/widget/text.field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class TeamAdd extends StatefulWidget {
  const TeamAdd({super.key});

  @override   
  State<TeamAdd> createState() => _TeamAddState();
}

class _TeamAddState extends State<TeamAdd> {
  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        title: Text("Add Team", style: GoogleFonts.montserrat(color: Colors.white, fontWeight: FontWeight.w500),),
      ),
      backgroundColor: Colors.grey.shade200,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [


          // teamPageText(),
          // teamPageText(),
          searchAbleDropDown()
        ],
      ),
    );
  }

  Expanded searchAbleDropDown() {
    return Expanded(
      child: Container(),
    );
  }
}

 TeamAdd teamAdd() => TeamAdd();