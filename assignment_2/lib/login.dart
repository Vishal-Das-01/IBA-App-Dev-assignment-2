import 'package:assignment_2/darkTheme.dart';
import 'package:assignment_2/lightTheme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {

    bool _switchValue = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,

      theme: _switchValue ? lightTheme : darkTheme,

  home: Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: [Container(
              height: MediaQuery.sizeOf(context).height * 0.5,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  // scale: 0.5,
                  image: AssetImage('asset/asset1.png'), fit: BoxFit.cover,
                ),
              ),
            ),

            Container(
                padding: EdgeInsets.only(left: 10, top: 10),
                child: Switch(
                    value: _switchValue,
                    activeColor: Colors.amber,
                    onChanged: (newValue) {
                      setState(() {
                        _switchValue = newValue;
                      });
                    },
                  ),
            )

            ]
          ),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.1, right: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Login In',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff755ebf),
                        fontSize: 20),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: const TextStyle(
                            color: Color(0xff755ebf),
                            fontWeight: FontWeight.bold),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  const SizedBox(height: 30),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: const TextStyle(
                          color: Color(0xff755ebf),
                          fontWeight: FontWeight.bold),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: ElevatedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff755ebf),
                        padding: EdgeInsets.fromLTRB(
                            MediaQuery.sizeOf(context).width * 0.3,
                            20,
                            MediaQuery.sizeOf(context).width * 0.3,
                            20),
                        shape: const StadiumBorder(),
                      ),
                      child: const Text(
                        'Sign In',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  RichText(
                   text: TextSpan(
                     children: <TextSpan>[
                       const TextSpan(
                         text: 'Don\'t have an account? ',
                         style: TextStyle(color: Color(0xff755ebf)),
                       ),
                       TextSpan(
                         text: ' Sign Up',
                         style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff755ebf),
                         ),
                         recognizer: TapGestureRecognizer()
                           ..onTap = () => Navigator.pushNamed(context, 'signUp'),
                       ),
                      
                     ],
                    ),
                  ),
                  
                  SizedBox(height: 20),
                  Text('Forget Passowrd', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff755ebf)),)


                ],
              ),
            ),
          )
        ],
      ),
      ),
    );
  }
}
