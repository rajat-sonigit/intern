import 'package:flutter/material.dart';
import 'package:interproj/gridviw.dart';
import 'package:interproj/login.dart';

class SignPage extends StatelessWidget {
  const SignPage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _header(context),
                const SizedBox(
                  height: 10,
                ),
                _logo(context),
                const SizedBox(
                  height: 20,
                ),
                _tagline(context),
                const SizedBox(
                  height: 20,
                ),
                _inputField(context),
                const SizedBox(
                  height: 25,
                ),
                _txt(context),
                SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.3,
                    width: MediaQuery.sizeOf(context).width,
                    child: Gri()),
                _txtaddschool(context),
                const SizedBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _header(context) {
    return const Column(
      children: [
        Text(
          "Welcome to",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  _tagline(context) {
    return const Column(
      children: [
        Text(
          "An Exclusive Network of Executive MBAs",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  _txt(context) {
    return const Column(
      children: [
        Text(
          "Top Executives from",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  _logo(context) {
    return Column(
      children: [
        Container(
            child: Image.asset(
          'assets/logo.png',
          height: 70,
          width: 150,
        )),
      ],
    );
  }

  _inputField(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _signupbtn(context),
        const SizedBox(
          height: 10,
        ),
        _or(context),
        const SizedBox(
          height: 10,
        ),
        _loginbtn(context),
      ],
    );
  }

  _loginbtn(context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        padding: const EdgeInsets.symmetric(vertical: 5),
        backgroundColor: const Color.fromARGB(255, 54, 188, 181),
      ),
      child: const Text(
        "Login",
        style: TextStyle(
          fontSize: 13,
          color: Colors.white,
        ),
      ),
    );
  }

  _signupbtn(context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
      },
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        padding: const EdgeInsets.symmetric(vertical: 5),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        side:
            const BorderSide(color: Color.fromRGBO(54, 188, 181, 1), width: 2),
      ),
      child: const Text(
        "Sign Up",
        style: TextStyle(
          fontSize: 13,
          color: Color.fromARGB(255, 54, 188, 181),
        ),
      ),
    );
  }

  _txtaddschool(context) {
    return const Text("+ 30 More Schools");
  }

  _or(context) {
    return Row(
      children: [
        // Text(
        //   " --------------------------------- ",
        //   style: TextStyle(fontSize: 15, fontWeight: FontWeight.w200),
        // ),
        Container(
          width: 150, // Adjust width as needed
          height: 1, // Adjust height as needed
          color: Colors.black, // Or any color you prefer
        ),
        Text(
          "   or ",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        ),
        Container(
          width: 150, // Adjust width as needed
          height: 1, // Adjust height as needed
          color: Colors.black, // Or any color you prefer
        ),
        // Text(
        //   "-------------------------------- ",
        //   style: TextStyle(fontSize: 15, fontWeight: FontWeight.w200),
        // ),
      ],
    );
  }
}
