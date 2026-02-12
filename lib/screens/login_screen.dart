import 'package:clone_mobileapp/screens/main_screen.dart';
import 'package:clone_mobileapp/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/gestures.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: InkWell(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: _buildBody(context),
      ),
    );
  }

  final _formKey = GlobalKey<FormState>();

  Widget _buildBody(BuildContext context) {
    return Center(
      child: Container(
        // alignment: Alignment.center,
        padding: EdgeInsets.all(24),
        constraints: BoxConstraints(maxWidth: 600),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildlogo(),
                // SizedBox(height: 20),
                _buildTitle(),
                SizedBox(height: 30),
                _buildEmailTextField(),
                SizedBox(height: 20),
                _buildPassTextField(),
                SizedBox(height: 10),
                _buildForgotPassTxtBtn(),
                _buildText(),
                SizedBox(height: 10),
                _buildSigninBtn(context),
                // _buildSignUpBtn(),
                _buildtxtBtn(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildlogo() {
    return Image.network(
      "https://purepng.com/public/uploads/large/purepng.com-nike-logologobrand-logoiconslogos-251519940082eoxxs.png",
      width: 120,
      height: 120,
      fit: BoxFit.contain,
    );
  }

  Widget _buildTitle() {
    return Text(
      "YOUR ACCOUNT FOR EVERYTHING NIKE",
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.bold,
        letterSpacing: 2,
      ),
    );
  }

  final _emailctrl = TextEditingController();
  Widget _buildEmailTextField() {
    return TextFormField(
      controller: _emailctrl,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 2,
          ), // highlight color
          borderRadius: BorderRadius.circular(12),
        ),

        hintText: "Enter your Email",
        label: Text("EMAIl"),
      ),
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      validator: (String? text) {
        if (text!.isEmpty) {
          return "Email is required.";
        }
        if (EmailValidator.validate(text) == false) {
          return "Email format is not correct";
        }
        return null;
      },
    );
  }

  final _pass = TextEditingController();

  bool _hidePass = true;

  Widget _buildPassTextField() {
    return TextFormField(
      controller: _pass,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 2,
          ), // highlight color
          borderRadius: BorderRadius.circular(12),
        ),
        hintText: "Enter your Password",
        label: Text("PASSWORD"),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _hidePass = !_hidePass;
            });
          },
          icon: Icon(_hidePass ? Icons.visibility : Icons.visibility_off),
        ),
      ),
      obscureText: _hidePass,
      textInputAction: TextInputAction.done,
      validator: (String? text) {
        if (text!.isEmpty) {
          return "Password is required.";
        }
        if (text.length < 6) {
          return "Password must be at least 6 characters";
        }
        return null;
      },
    );
  }

  Widget _buildSigninBtn(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            if (_emailctrl.text.trim().toLowerCase() == "test@gmail.com" &&
                _pass.text == "123456") {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => MainScreen()),
              );
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("Login Failed"),
                  action: SnackBarAction(
                    label: "DONE",
                    onPressed: () {
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                    },
                  ),
                ),
              );
            }
          }
        },
        label: Text("SIGN IN"),
        // icon: Icon(Icons.login_sharp),
      ),
    );
  }

  // bool _rememberMe = false;

  Widget _buildForgotPassTxtBtn() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        // Row(
        //   children: [
        //     Checkbox(
        //       value: _rememberMe,
        //       onChanged: (value) {
        //         setState(() {
        //           _rememberMe = value!;
        //         });
        //       },
        //     ),
        //     const Text("Remember Me"),
        //   ],
        // ),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(foregroundColor: Colors.grey),
          child: const Text("Forgot Password?"),
        ),
      ],
    );
  }

  Widget _buildText() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: const TextStyle(fontSize: 14, color: Colors.grey),
        children: [
          const TextSpan(text: "By logging in you agree to Nike's "),
          TextSpan(
            text: 'Terms of Service',
            style: const TextStyle(
              color: Colors.grey,
              decoration: TextDecoration.underline,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                // TODO: Handle Terms of Service tap
              },
          ),
          const TextSpan(text: ' and '),
          TextSpan(
            text: 'Privacy Policy',
            style: const TextStyle(
              color: Colors.grey,
              decoration: TextDecoration.underline,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                // TODO: Handle Privacy Policy tap
              },
          ),
        ],
      ),
    );
  }

  Widget _buildtxtBtn() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don't have an account ?",
          style: TextStyle(color: Colors.grey),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const SignupScreen()),
            );
          },
          style: TextButton.styleFrom(
            foregroundColor: Colors.black,
            textStyle: const TextStyle(fontWeight: FontWeight.bold),
          ),
          child: const Text("Sign Up"),
        ),
      ],
    );
  }
}
