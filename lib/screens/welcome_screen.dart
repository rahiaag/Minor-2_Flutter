import 'package:basicflutter/screens/home_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/bg.jpg"),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.7),
            BlendMode.dstATop,
          ),
        ),
      ),
      child: Material(
        color: Colors.transparent,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 65, horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Enjoy",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
              SizedBox(height: 2),
              Text(
                "the world!",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.9),
                  fontSize: 35,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.5,
                ),
              ),
              SizedBox(height: 12),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.7),
                  fontSize: 16,
                  letterSpacing: 1.2,
                ),
              ),
              SizedBox(height: 30),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
                child: Ink(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black54,
                    size: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      ),
    );
  }
}
