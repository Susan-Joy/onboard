import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  void _navigateToPage(BuildContext context, String page) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: Text('Page: $page'),
          ),
          body: Center(
            child: Text('This is the $page page'),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _navigateToPage(context, 'Page 1'),
              child: const Text('Go to Page 1'),
            ),
            ElevatedButton(
              onPressed: () => _navigateToPage(context, 'Page 2'),
              child: const Text('Go to Page 2'),
            ),
          ],
        ),
      ),
    );
  }
}
