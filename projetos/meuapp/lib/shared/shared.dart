import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Share extends StatelessWidget {
  const Share(
      {super.key,
      required this.title,
      required this.controller,
      this.isPassword = false});

  final String title;
  final TextEditingController controller;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25, right: 25, bottom: 22),
      child: Column(
        children: [
          Text(
            title,
            style: GoogleFonts.lato(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            controller: controller,
            obscureText: isPassword,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              isDense: true,
            ),
          ),
        ],
      ),
    );
  }
}
