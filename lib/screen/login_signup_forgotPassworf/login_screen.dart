import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginfire/screen/home/controller/home_controller.dart';
import 'package:loginfire/screen/home/view/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(begin: Alignment.centerLeft, colors: [
              Colors.redAccent.shade700,
              Colors.redAccent.shade400,
              Colors.redAccent.shade200,
              Colors.redAccent.shade100,
            ])),
          ),
          Column(
            children: [
              Container(
                height: 150,
                alignment: Alignment.centerLeft,
                child: const Padding(
                  padding:  EdgeInsets.only(left: 20),
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 80, right: 30, left: 30),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Card(
                            elevation: 10,
                            shadowColor: Colors.blue.shade100,
                            child: Column(
                              children:  const [
                                 TextField(
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 25, horizontal: 10),
                                      hintText: "Email or Phone Number",
                                      hintStyle: TextStyle(
                                        color: Colors.grey,
                                      )),
                                ),
                                 TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 25, horizontal: 10),
                                      hintText: "Password",
                                      hintStyle: TextStyle(
                                        color: Colors.grey,
                                      )),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 170),
                            child: TextButton(
                                onPressed: () {},
                                child: const Text("Forgot Password?")),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 25),
                            child: ElevatedButton(
                              onPressed: () {
                                Get.offAll(const HomeScreen());
                              },
                              child: const Text("Login"),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor : Colors.redAccent.shade200,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  minimumSize: const Size(150, 45)),
                            ),
                          ),
                          const Padding(
                            padding:  EdgeInsets.only(top: 20),
                            child: Text(
                              "-------------  Continue with  -------------",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 60,top: 20),
                            child: Row(
                              children: [
                                InkWell(
                                  onTap: (){},
                                  child: CircleAvatar(
                                    radius: 20,
                                    child: Image.asset("assets/login_logo/facebook.png"),
                                  ),
                                ),

                                // ClipRRect(
                                //   borderRadius: BorderRadius.circular(8.0),
                                //   child: Image.asset(
                                //     "assets/login_logo/facebook.png",
                                //     height: 40,
                                //     width: 40,
                                //   ),
                                // ),

                                const Spacer(),
                                InkWell(
                                  
                                  onTap: (){},
                                  child: CircleAvatar(
                                    radius: 20,
                                    child: Image.asset("assets/login_logo/google.jpg"),
                                  ),
                                ),
                                const Spacer(),
                                InkWell(
                                  onTap: (){},
                                  child: CircleAvatar(
                                    radius: 20,
                                      child: Image.asset("assets/login_logo/mobile.png"),
                                  ),
                                ),
                                const Spacer(),
                                const Spacer(),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 60,top: 10),
                            child: Row(
                              children: [
                                const Text("Don't have account?"),
                                TextButton(onPressed: (){}, child: const Text("Sign Up")),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
