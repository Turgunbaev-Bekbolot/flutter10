import 'package:flutter/material.dart';
import 'package:routes_practice/man_info/info.dart';

class ManInfo extends StatelessWidget {
  final String name;
  final String image;
  final String age;
  final String location;
  final String language;
  final bool? isLadi;
  final String locationimage;
  final String languageimage;

  const ManInfo({
    Key? key,
    required this.name,
    required this.age,
    required this.image,
    required this.location,
    required this.language,
    required this.isLadi,
    required this.locationimage,
    required this.languageimage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 23),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Info(
            isLadi: isLadi!,
            locationimage: locationimage,
            languageimage: languageimage,
            language: language,
            location: location,
            name: name,
            image: image,
            age: age,
          ),
        ),
      ),
    );
  }
}

class Info extends StatelessWidget {
  const Info({
    Key? key,
    required this.name,
    required this.age,
    required this.image,
    required this.location,
    required this.language,
    required this.locationimage,
    required this.languageimage,
    required this.isLadi,
  }) : super(key: key);

  final String name;
  final String image;
  final String location;
  final String age;
  final String language;
  final String locationimage;
  final String languageimage;
  final bool isLadi;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 410,
          height: 375,
          child: Image.network(
            image,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.blue,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                name,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                width: 180,
              ),
              Text(
                age,
                style: TextStyle(
                  color: Color(0xffC4DAF1),
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SizedBox(
            width: 410,
            height: 180,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                AllInfo(
                  info: 'Location',
                  info2: location,
                  image: Image.asset(
                    locationimage,
                    width: 18,
                    height: 13,
                  ),
                ),
                AllInfo(
                  info: 'Language',
                  info2: language,
                  image: Image.asset(
                    'assets/images/$languageimage.png',
                    width: 18,
                    height: 13,
                  ),
                ),
                AllInfo(
                  info: 'Education',
                  info2: 'University degree',
                  image: SizedBox(),
                ),
                AllInfo(
                  info: 'Job',
                  info2: 'Museum worker,lecturer',
                  image: SizedBox(),
                ),
                AllInfo(
                  info: 'Zodiac',
                  info2: 'Pisces',
                  image: Image.asset(
                    'assets/images/fish.png',
                    width: 18,
                    height: 13,
                  ),
                ),
                AllInfo(
                  info: 'Height',
                  info2: "154 cm (5'05')",
                  image: SizedBox(),
                ),
                AllInfo(
                  info: 'Eye color',
                  info2: 'Green',
                  image: SizedBox(),
                ),
                AllInfo(
                  info: 'Hair color',
                  info2: 'Redhead',
                  image: SizedBox(),
                ),
                AllInfo(
                  info: 'Smoking',
                  info2: 'Non-smoking',
                  image: SizedBox(),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: 410,
          height: 83,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurStyle: BlurStyle.normal,
                blurRadius: 7,
                color: Color.fromRGBO(0, 69, 115, 0.1),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Icon(
                        Icons.menu,
                        color: Color(0xff757575),
                        size: 30,
                      ),
                      Text(
                        'Menu',
                        style: TextStyle(
                          color: Color(0xff757575),
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                isLadi == false
                    ? Expanded(
                        child: Column(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              child: Image.asset('assets/images/ladies.png'),
                            ),
                            Text(
                              'Ladies',
                              style: TextStyle(
                                color: Color(0xff757575),
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      )
                    : SizedBox(
                        height: 0,
                        width: 0,
                      ),
                Expanded(
                  child: Column(
                    children: [
                      Icon(
                        Icons.chat_outlined,
                        color: Color(0xff757575),
                        size: 30,
                      ),
                      Text(
                        'Chat',
                        style: TextStyle(
                          color: Color(0xff757575),
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        child: Image.asset('assets/images/elipse.png'),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Profile',
                        style: TextStyle(
                          color: Color(0xff757575),
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
