import 'package:anm_mart/common/widgets/spaces.dart';
import 'package:anm_mart/features/auth/widgets/custom_login.dart';
import 'package:anm_mart/features/auth/widgets/custom_signup.dart';
import 'package:flutter/material.dart';

enum Auth { signUp, signIn }

class AuthSceen extends StatefulWidget {
  static const String routeName = "/auht_screen";
  const AuthSceen({super.key});

  @override
  State<AuthSceen> createState() => _AuthSceenState();
}

class _AuthSceenState extends State<AuthSceen> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController confirmPasswordcontroller = TextEditingController();
  List<TextEditingController> logincontrollers = [
    TextEditingController(), //index0 controller for email
    TextEditingController(), //index1 controller for password
  ];
  List<TextEditingController> signUpcontrollers = [
    TextEditingController(), //index0 controller for username
    TextEditingController(), //index1 controller for email
    TextEditingController(), //index2 controller for password
    TextEditingController(), //index3 controller for consfirmpassword
  ];
  final formKey = GlobalKey<FormState>();
  var signUPlabels = ['User Name', 'Email', 'Password', 'Confirm Password'];

  var loginlabels = ['Email', 'Password'];
  Auth auth = Auth.signIn;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          SingleChildScrollView(
              child: Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            color: Colors.blueGrey.shade100.withOpacity(.3),
            child: Column(
              children: [
                auth == Auth.signIn
                    ? CustomLogin(
                        formKey: formKey,
                        labels: loginlabels,
                        controllers: logincontrollers)
                    : CustomSignUp(
                        formKey: formKey,
                        labels: signUPlabels,
                        controllers: signUpcontrollers,
                      ),
                SpaceSized.space10H,
                TextButton(
                  onPressed: () {
                    setState(() {
                      auth = auth == Auth.signUp ? Auth.signIn : Auth.signUp;
                    });
                  },
                  child: const Text("Forgot Password?",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 51, 150, 232))),
                ),
                SpaceSized.space10H,
              ],
            ),
          ))
        ],
      )),
    );
  }
}
