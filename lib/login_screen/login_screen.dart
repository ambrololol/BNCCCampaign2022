import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 15.0,
                  right: 15.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/travelinpay.svg',
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    _usernameTextField(),
                    const SizedBox(
                      height: 15.0,
                    ),
                    _passwordTextField(),
                    Row(
                      children: [
                        const Expanded(
                          child: Text(
                            'contoh error',
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                        TextButton(
                            onPressed: () {}, child: Text('Forgot Password?')),
                      ],
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: const ButtonStyle(
                          elevation: MaterialStatePropertyAll(0.0),
                          minimumSize:
                              MaterialStatePropertyAll(Size.fromHeight(50)),
                        ),
                        child: Text('Login')),
                    const SizedBox(height: 25.0),
                    Row(
                      children: const [
                        Expanded(
                          child: Divider(
                            height: 0.5,
                            color: Colors.black54,
                          ),
                        ),
                        SizedBox(width: 40.0),
                        Text('OR'),
                        SizedBox(width: 40.0),
                        Expanded(
                          child: Divider(
                            height: 0.5,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 25.0),
                    TextButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/icons/Shape.svg'),
                          const SizedBox(
                            width: 10.0,
                          ),
                          const Text(
                            'Log in with Facebook',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?"),
                TextButton(
                  onPressed: () {},
                  child: const Text('Sign Up'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String? validateEmail(String? value) {
    String pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";
    RegExp regex = RegExp(pattern);
    if (value == null || value.isEmpty || !regex.hasMatch(value))
      return 'Enter a valid email address';
    else
      return null;
  }

  Widget _usernameTextField() {
    return Form(
      autovalidateMode: AutovalidateMode.always,
      child: TextFormField(
        validator: (value) => validateEmail(value),
        decoration: const InputDecoration(
            icon: Icon(Icons.mail),
            contentPadding:
                EdgeInsets.symmetric(vertical: 18.0, horizontal: 16.0),
            filled: true,
            fillColor: Color.fromRGBO(240, 240, 240, 1),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                //color: Color.fromRGBO(0, 0, 0, 0.1),
                color: Colors.red,
                width: 0.5,
              ),
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                width: 0.5,
              ),
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
            ),
            hintText: 'Email',
            labelText: 'Email'),
      ),
    );
  }

  Widget _passwordTextField() {
    return TextFormField(
      obscureText: true,
      decoration: const InputDecoration(
        icon: Icon(Icons.password),
        contentPadding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 16.0),
        filled: true,
        fillColor: Color.fromRGBO(240, 240, 240, 1),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            //color: Color.fromRGBO(0, 0, 0, 0.1),
            color: Colors.red,
            width: 0.5,
          ),
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            width: 0.5,
          ),
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
        hintText: 'Password',
      ),
    );
  }
}
