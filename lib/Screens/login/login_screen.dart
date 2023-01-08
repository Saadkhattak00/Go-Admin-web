import 'package:flutter/material.dart';
import 'package:go_admin/Screens/DashBoard/Dashoard_screen.dart';
import 'package:go_admin/constants.dart';

class login_screen extends StatefulWidget {
  const login_screen({Key? key}) : super(key: key);

  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  bool text = true;
  Icon visibleicon = const Icon(Icons.visibility);
  Icon unvisibleicon = const Icon(Icons.visibility_off);
  Icon icon = const Icon(
    Icons.visibility_off,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 450,
                height: 480,
                decoration:  BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 8,
                      offset: const Offset(0, 0), // changes position of shadow
                    ),
                  ],
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  color: AppColors.secondaryColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    title(text: "Go.",),
                    title(text: "Admin Panel"),
                 const SizedBox(height: 70,),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: TextField(
                        style: const TextStyle(fontSize: 15,
                        color: Colors.white
                        ),
                        onSubmitted: (String value) {

                        },
                        decoration: InputDecoration(
                          focusColor: Colors.green,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          icon: const Icon(
                            Icons.email,
                            color: Colors.white,
                          ),
                          labelText: 'Email',
                            labelStyle: const TextStyle(color: Colors.white)
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: TextField(
                        style: const TextStyle(fontSize: 15,
                            color: Colors.white
                        ),
                        onSubmitted: (String value) {

                        },
                        obscureText: text,
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  if (text == true) {
                                    text = false;
                                    icon = visibleicon;
                                  } else {
                                    text = true;
                                    icon = unvisibleicon;
                                  }
                                });
                              },
                              icon: icon,
                              color: Colors.white,
                            ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          icon: const Icon(
                            Icons.security,
                            color: Colors.white,
                          ),
                          labelText: 'Password',
                          labelStyle: const TextStyle(color: Colors.white)
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    Container(
                      width: 150,
                      height: 35,

                      decoration: const BoxDecoration(
                          color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: MaterialButton(onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Dashboard(),
                          ),
                        );
                      },
                        elevation: 20,
                      child: title(text: "Login"),

                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class title extends StatelessWidget {
  String text;
  title({
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,style: const TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.w600
    ),);
  }
}
