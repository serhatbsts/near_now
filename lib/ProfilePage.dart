import 'package:flutter/material.dart';
class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Hesap kontrolü için bir değişken kullanabilirsiniz
    bool hasAccount = false;

    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: hasAccount ? AccountInfo() : AccountOptions(),
      ),
    );
  }
}

class AccountInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Account Information'),
        // Hesap bilgilerini buraya ekleyin
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
            // Hesap oluşturma işlemi
          },
          child: Text('Create Account'),
        ),
        ElevatedButton(
          onPressed: () {
            // Hesaba giriş yapma işlemi
          },
          child: Text('Log In'),
        ),
      ],
    );
  }
}
