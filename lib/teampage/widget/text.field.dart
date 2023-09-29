import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TeamPageText extends StatefulWidget {
  final String label;
  final Icon icon;
  final TextEditingController controller;
  const TeamPageText(
      {super.key,
      required this.controller,
      required this.icon,
      required this.label});

  @override
  State<TeamPageText> createState() => _TeamPageTextState();
}

class _TeamPageTextState extends State<TeamPageText> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 0,
                    blurRadius: 10,
                    offset: Offset(0, 4))
              ]),
          child: TextFormField(
            controller: widget.controller,
          decoration: InputDecoration(
                prefixIcon: widget.icon,
                label: Text(
                  widget.label.toString(),
                  style: GoogleFonts.montserrat(color: Colors.black),
                ),
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15))),

            

          ),
        ),
      ),
    );
  }
}

TeamPageText teamPageText(
    {required TextEditingController controller,
    required String labele,
    required Icon icon}) {
  return TeamPageText(
    controller: controller,
    label: labele,
    icon: icon,
  );
}
