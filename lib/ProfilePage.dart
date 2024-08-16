import 'package:flutter/material.dart';
import 'package:near_now/user_model.dart';
import 'package:provider/provider.dart';
import 'auth_provider.dart';
import 'CreateAccountPage.dart';
import 'LoginPage.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<AuthProvider>(context).user;

    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: user != null ? AccountInfo(user: user) : AccountOptions(),
      ),
    );
  }
}

class AccountInfo extends StatelessWidget {
  final User user;

  AccountInfo({required this.user});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('First Name: Serhat'),
        Text('Last Name: Beştaş'),
        Text('Email: ${user.email}'),
        SizedBox(height: 20.0),
        ElevatedButton(
          onPressed: () {
            Provider.of<AuthProvider>(context, listen: false).logout();
            Navigator.pop(context); // Kullanıcıyı geri yönlendirme
          },
          child: Text('Log Out'),
        ),
      ],
    );
  }
}

class AccountOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CreateAccountPage()),
            );
          },
          child: Text('Create Account'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          },
          child: Text('Log In'),
        ),
      ],
    );
  }
}
