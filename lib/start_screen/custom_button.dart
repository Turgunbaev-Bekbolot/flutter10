import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final bool? isAuth;
  final TextEditingController? nameController;
  final TextEditingController? ageController;
  final TextEditingController? imageController;
  final Function() onTap;

  const CustomButton({
    Key? key,
    this.isAuth = false,
    required this.text,
    this.ageController,
    this.imageController,
    this.nameController,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
      ),
      child: ElevatedButton(
        onPressed: onTap,

        //   // if (!isAuth!) {
        //   //   Navigator.push(
        //   //       context,
        //   //       MaterialPageRoute(
        //   //           builder: (context) => AuthScreen(title: text)));
        //   // } else if (nameController!.text.isNotEmpty &&
        //   //     ageController!.text.isNotEmpty &&
        //   //     imageController!.text.isNotEmpty) {
        //   //   Navigator.push(
        //   //       context,
        //   //       MaterialPageRoute(
        //   //           builder: (context) => ManInfo(
        //   //                 name: "Philipe",
        //   //               )));
        //   // } else if (nameController!.text.isEmpty &&
        //   //     imageController!.text.isEmpty) {
        //   //
        //   // }
        // },
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
