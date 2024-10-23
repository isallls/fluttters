import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? Key}) : super(key: Key);
  _loginState createState() => _loginState();
}

class _loginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final _userNameCtrl = TextEditingController();
  final _passwordNameCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("Login Admin",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
            SizedBox(height: 50),
            Center(
              child: Form(
                key: _formKey,
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.3,
                  child: Column(
                    children: [
                      _usernameTextfield(),
                      SizedBox(height: 20),
                      _passwordTextField(),
                      SizedBox(height: 40),
                      _tomboLogin(),
                    ],
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }

  Widget _usernameTextfield() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Username"),
      controller: _userNameCtrl,
    );
  }

  Widget _passwordTextField() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Password"),
      controller: _passwordNameCtrl,
    );
  }

  Widget _tomboLogin() {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(onPressed: () {}, child: Text("Login")),
    );
  }
}
