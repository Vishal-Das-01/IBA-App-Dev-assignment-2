import 'package:assignment_2/darkTheme.dart';
import 'package:assignment_2/lightTheme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';






class MySignUp extends StatefulWidget {
  const MySignUp({super.key});

  @override
  State<MySignUp> createState() => _MySignUpState();
}

class _MySignUpState extends State<MySignUp> {
  var toogleIndex = 1;
  bool _switchValue = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          debugShowCheckedModeBanner: false,

      theme: _switchValue ? lightTheme : darkTheme,
      home: Scaffold(
      // backgroundColor: Theme.of(context).colorScheme.background,
      backgroundColor:  _switchValue? Colors.white : Colors.black,

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: [
              // Column(
              //   children: [
              //     Switch(
              //       value: _switchValue,
              //       onChanged: (newValue) {
              //         _switchValue = newValue;
              //       },
              //     ),
              //   ],
              // ),
              Container(
                height: MediaQuery.sizeOf(context).height * 0.5,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    // scale: 0.5,
                    image: AssetImage('asset/asset2.png'), fit: BoxFit.cover,
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
                // child: ToggleSwitch(
                //   minWidth: 50.0,
                //   initialLabelIndex: toogleIndex,
                //   cornerRadius: 20.0,
                //   activeFgColor: Colors.black,
                //   inactiveBgColor: Colors.grey,
                //   inactiveFgColor: Colors.white,
                //   totalSwitches: 2,
                //   icons: const [Icons.brightness_3, Icons.brightness_6_sharp],
                //   activeBgColors: const [
                //     [Colors.blue],
                //     [Color.fromARGB(255, 255, 237, 73)]
                //   ],
                //   onToggle: (index) {
                //     setState(() {
                //       toogleIndex = index!;
                //     });

                //     // print(index);
                //   },
                // ),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.1, right: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 10),
                  const Text(
                    'Login In',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff755ebf),
                        // color: Theme.of(context).colorScheme.primary,
                        fontSize: 20),
                  ),
                  const SizedBox(height: 30),
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
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: const TextStyle(
                                color: Color(0xff755ebf),
                                fontWeight: FontWeight.bold,
                                fontSize: 10),
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
                      ),
                      SizedBox(width: 5),
                      Expanded(
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Confirm Password',
                            hintStyle: const TextStyle(
                                color: Color(0xff755ebf),
                                fontWeight: FontWeight.bold,
                                fontSize: 10),
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
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff755ebf),
                        padding: EdgeInsets.fromLTRB(
                            MediaQuery.sizeOf(context).width * 0.25,
                            20,
                            MediaQuery.sizeOf(context).width * 0.25,
                            20),
                        shape: const StadiumBorder(),
                      ),
                      child: const Text(
                        'Create Account',
                        style: TextStyle(
                          fontSize: 15,
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
                          text: 'Have an account? ',
                          style: TextStyle(color: Color(0xff755ebf)),
                        ),
                        TextSpan(
                          text: ' Log In',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff755ebf),
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap =
                                () => Navigator.pushNamed(context, 'login'),
                        ),
                      ],
                    ),
                  ),
                  //   Row(
                  //     children: <Widget>[
                  //        TextFormField(
                  //   obscureText: true,
                  //   decoration: InputDecoration(
                  //     labelText: 'Password',
                  //     labelStyle: const TextStyle(
                  //         color: Color(0xff755ebf),
                  //         fontWeight: FontWeight.bold),
                  //     border: OutlineInputBorder(
                  //       borderRadius: BorderRadius.circular(15),
                  //       borderSide: const BorderSide(
                  //         color: Colors.black,
                  //       ),
                  //     ),
                  //   ),
                  // ),

                  //     ],
                  //   ),
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
