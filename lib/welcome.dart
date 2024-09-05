import 'package:flutter/material.dart';
import 'register.dart';
import 'login.dart';

class WelcomeScreen extends StatelessWidget {
  void _showRegisterSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => const RegisterBottomSheet(),
    );
  }

  void _showLoginSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => const LoginBottomSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(80.0),
            child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5KDDwegtoNjSutdRogMIYbSM9YID1Q7hr4A&s'),
          ),
          const SizedBox(height: 40),
          const Text(
            'Welcome',
            style: TextStyle(
              color: Color.fromARGB(255, 119, 160, 219),
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'choose to login or creat your account ',
            textAlign: TextAlign.center,
            style: TextStyle(color: Color.fromARGB(255, 119, 160, 219)),
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: () => _showRegisterSheet(context),
            style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 119, 160, 219)),
            child: const Text('Create Account'),
          ),
          TextButton(
            onPressed: () => _showLoginSheet(context),
            child: const Text(
              'Login',
              style: TextStyle(color: Color.fromARGB(255, 119, 160, 219)),
            ),
          ),
        ],
      ),
    );
  }
}
