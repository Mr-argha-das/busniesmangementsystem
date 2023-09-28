import 'package:bms_new/teampage/widget/text.field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:searchable_paginated_dropdown/searchable_paginated_dropdown.dart';

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
      backgroundColor: Colors.grey.shade200,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [


          teamPageText(),
          teamPageText(),
          searchAbleDropDown()
        ],
      ),
    );
  }

  Expanded searchAbleDropDown() {
    return Expanded(
          child: SearchableDropdown<String>(
              hintText: Container(
                height: 50,
                
                decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 0,
              blurRadius: 10,
              offset: Offset(0, 4)
            )
          ]
          
                ),
                child: Center(
          child: Text("Select Venture", style: GoogleFonts.montserrat(
            color: Colors.black,
            fontSize: 18,
          ),),
                ),
              ),
              margin: const EdgeInsets.all(15),
              items: List.generate(10, (i) => SearchableDropdownMenuItem(value: "vgcy ytygho", label: 'item $i', child: Text('item $i'))),
              onChanged: (String? value) {
          debugPrint('$value');
              },
            ),
        );
  }
}

