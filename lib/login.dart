import 'package:flutter/material.dart';
import 'package:interproj/home_page.dart';
import 'package:interproj/screen.dart';
import 'package:interproj/signup.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _header(context),
              _logo(context),
              const SizedBox(
                height: 10,
              ),
              _inputField(context),
              _signup(context),
            ],
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
        TextField(
          decoration: InputDecoration(
            hintText: "Enter email id*",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            fillColor: Colors.white.withOpacity(0.1),
            filled: true,
            prefixIcon: const Icon(Icons.mail_outline_outlined),
            contentPadding: const EdgeInsets.symmetric(vertical: 12),
          ),
        ),
        const SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            hintText: "Enter password*",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            fillColor: Colors.white.withOpacity(0.1),
            filled: true,
            prefixIcon: const Icon(Icons.lock_outline),
            contentPadding: const EdgeInsets.symmetric(vertical: 12),
          ),
          obscureText: true,
        ),
        _forgotPassword(context),
        _loginbtn(context),
        const SizedBox(
          height: 10,
        ),
        _or(context),
        const SizedBox(
          height: 10,
        ),
        _loginLinkedin(context),
        const SizedBox(
          height: 100,
        )
      ],
    );
  }
  _forgotPassword(context) {
    return Row(
      mainAxisAlignment:
          MainAxisAlignment.end, // Aligns the button to the left side
      children: [
        TextButton(
          onPressed: () {},
          child: const Text(
            "Forgot password?",
            style: TextStyle(color: Color.fromARGB(255, 45, 44, 44)),
          ),
        ),
      ],
    );
  }

  _loginbtn(context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Screen()));
      },
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

  _loginLinkedin(context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        padding: const EdgeInsets.symmetric(vertical: 6),
        backgroundColor: Colors.white,
        side: const BorderSide(
            color: Color.fromRGBO(0, 102, 153, 1), width: 2), // Blue border
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/link.png', // Path to your asset icon
            width: 24, // Set the width of the image
            height:
                24, // Set the height of the image // Color of the asset icon
          ),
          const SizedBox(width: 8), // Add some space between icon and text
          const Text(
            "Login with Linkedin",
            style: TextStyle(
              fontSize: 16,
              color: Color.fromRGBO(0, 102, 153, 1), // Text color set to white
            ),
          ),
        ],
      ),
    );
  }

  _or(context) {
    return const Row(
      children: [
        Text(
          " ---------------------------",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w200),
        ),
        Text(
          "   or ",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        ),
        Text(
          "---------------------------",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w200),
        ),
      ],
    );
  }
  _signup(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Dont have an account? "),
        TextButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SignPage()));
            },
            child: const Text(
              "Sign Up",
              style: TextStyle(color: Color.fromARGB(255, 59, 183, 177)),
            ))
      ],
    );
  }
}
