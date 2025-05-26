import 'package:flutter/material.dart';

class PlayCard extends StatelessWidget {
  final String image;
  final String name;
  final Widget Function(BuildContext) onTap;
  const PlayCard({super.key, required this.image, required this.name, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: 
          () => Navigator.push(
            context,
            MaterialPageRoute(builder: onTap),
          ),
      child: Card(
        color: Color(0xffffffff),
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Color(0xffeaf3fb),
              child: Image.asset(
                image,
                width: 120,
                height: 120,
                fit: BoxFit.fill,
              ),
            ),
            Text(
              name,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color(0xff1f3a8a),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
