import 'package:flutter/material.dart';
import 'package:routes_practice/man_info/information.dart';
import 'package:routes_practice/man_name/custom_textfield.dart';
import 'package:routes_practice/start_screen/custom_button.dart';

class AuthScreen extends StatelessWidget {
  final String title;
  final bool isMan;

  const AuthScreen({
    Key? key,
    required this.title,
    this.isMan = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController ageController = TextEditingController();
    final TextEditingController imageController = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
        ),
        leadingWidth: 200,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            children: [
              Icon(
                Icons.arrow_back_ios_new,
                color: Color(0xff0099FF),
              ),
              Text(
                'Back',
                style: TextStyle(
                  color: Color(0xff0099FF),
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomTextfield(
              controller: nameController,
              text: 'Your name',
              isName: false,
            ),
            CustomTextfield(
              controller: ageController,
              text: 'Age',
              isName: true,
            ),
            CustomTextfield(
              controller: imageController,
              text: 'Image Url',
              isName: false,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100, bottom: 20),
              child: CustomButton(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ManInfo(
                                locationimage: isMan
                                    ? 'assets/images/france.png'
                                    : 'assets/images/rus.png',
                                languageimage: isMan ? 'english' : 'rus',
                                location: isMan ? 'France' : 'Russian',
                                language: isMan ? 'English' : 'Russian',
                                isLadi: isMan ? false : true,
                                name: nameController.text,
                                age: ageController.text,
                                image: imageController.text,
                              )));
                },
                nameController: nameController,
                ageController: ageController,
                imageController: imageController,
                text: 'Next',
                isAuth: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
