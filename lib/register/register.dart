import 'package:android/image_const.dart';
import 'package:android/login/homepage.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        title: Text(
          'Register',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),

        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ignore: sized_box_for_whitespace
            Container(
              height: 100,
              width: 70,
              child: Image.asset(createacc, height: 100, width: 100),
            ),
            Text(
              'Create a new Account',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: 'Enter your Email ',
                label: Text(
                  'Name',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 46, 38, 38),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person_2_sharp),
                hintText: 'Enter your Username ',
                label: Text(
                  'Username',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 46, 38, 38),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                hintText: 'Enter your Email ',
                label: Text(
                  'Email',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 46, 38, 38),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(height: 25),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Homepage()),
                );
              },
              child: Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.amber,
                  gradient: LinearGradient(
                    colors: [
                      const Color.fromARGB(255, 118, 70, 150),
                      const Color.fromARGB(255, 81, 0, 152),
                      const Color.fromARGB(255, 125, 10, 226),
                    ],
                  ),
                ),
                child: Center(
                  child: Text(
                    "Register",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already Have an Account", style: TextStyle(fontSize: 15)),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Homepage()),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsetsGeometry.only(left: 10),
                    child: Text(
                      'Try login',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
