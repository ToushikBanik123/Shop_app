import 'package:flutter/material.dart';
import 'package:p_app/utils/const.dart';
import '../utils/routes.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = "";
  bool _secureText = true;
  bool myButton = false;
  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext)async {
    if(_formkey.currentState!.validate()) {
      setState(() {
        myButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        myButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Image.asset('image/loginpic.png'),
                 Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text("Welcome $username",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    onChanged: (value){
                      setState(() {
                        username=value;
                      });
                    },
                    validator: (String? value) {
                      if (value != null && value.length < 1) {
                        return "Username cannot be empty";
                      }

                      return null;
                    },
                    decoration: const InputDecoration(
                      hintText: "Enter your Username",
                      labelText: "Username",
                      //border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.email,
                        color: PrimaryColor,),
                      labelStyle: TextStyle(
                        fontSize: 20,
                      ),
                      contentPadding:  EdgeInsets.symmetric(vertical: 0,horizontal: 15),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    obscureText: _secureText,
                    validator: (String? value) {
                      return (value != null && value.length < 8 ) ? 'Password length should be more than 8.' : null;
                    },
                    decoration:  InputDecoration(
                      hintText: "password",
                      labelText: "password",
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          _secureText = !_secureText;

                        });
                      },
                        icon: Icon(_secureText ?  Icons.security : Icons.remove_red_eye,
                            color: PrimaryColor),
                      ),
                      //border: OutlineInputBorder(),
                      labelStyle: const TextStyle(
                        fontSize: 20,
                      ),
                      contentPadding:  EdgeInsets.symmetric(vertical: 0,horizontal: 15),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () => moveToHome(BuildContext),
                  child: AnimatedContainer(
                    decoration: BoxDecoration(
                      color: PrimaryColor,
                      borderRadius: BorderRadius.circular(myButton ? 50 : 8),
                    ),
                    duration: const Duration(seconds: 1),
                    alignment: Alignment.center,
                    height: 50,
                    width: myButton? 50 : 150,
                    child: myButton? const Icon(Icons.done,
                    color: Colors.white,)
                        : const Text("Login",style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
