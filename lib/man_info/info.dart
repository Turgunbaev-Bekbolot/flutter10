import 'package:flutter/material.dart';

class AllInfo extends StatelessWidget {
  final String info;
  final String info2;
  final Widget? image;

  const AllInfo({
    Key? key,
    required this.info,
    required this.info2,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 35),
      child: Row(
        children: [
          Container(
            width: 90,
            height: 19,
            child: Text(
              info,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            width: 60,
          ),
          Container(
            width: 200,
            height: 19,
            child: Row(
              children: [
                image!,
                SizedBox(
                  width: 2,
                ),
                Text(
                  info2,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
