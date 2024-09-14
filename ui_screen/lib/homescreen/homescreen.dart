import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background_img.jpg'), // Path to your image
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          children: [
            // Left side image and text
            Expanded(
              flex: 1,
              child: Stack(
                children: [
                  // Background image
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage('assets/background.jpg'), // Path to your image
                          fit: BoxFit.cover,
                          
                        ),
                      ),
                    ),
                  ),
        
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.grey.withOpacity(0.1),
                              Colors.grey.withOpacity(0.3),
                              Colors.grey.withOpacity(0.3),
                              Colors.grey.withOpacity(0.4),
                              Colors.grey.withOpacity(0.6),
                            ],
                          ),
                        ),
                                          ),
                      ),
                  // Text overlay on the image
                  Positioned(
                    bottom: 40,
                    left: 20,
                    child: Text(
                      'Explore Demo Limited\'s Premier Logistics\nand Freight Services',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Right side login form
            Expanded(
              child: Padding(
                // padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
                padding: EdgeInsets.fromLTRB(50, 10, 50, 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    Row(
                      children: [
                        Image.asset(
                      'assets/logo.jpg',
                      width: 50,
                      height: 50,
                    ),
                    Text("DEMO", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      ],),
                    
                    
                    
                    
                    SizedBox(height: 20,),
                    
                    
                    Expanded(
                    flex: 1,
                    child: Center(
                      child: Container(
                        padding: EdgeInsets.all(30),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(height: 10),
                            // Logo
                            Image.asset(
                              'assets/logo.jpg', // Path to your logo
                              height: 60,
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Welcome Back',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'We are glad to see you',
                              style: TextStyle(color: Colors.grey, fontSize: 10, fontWeight: FontWeight.normal),
                            ),
                            SizedBox(height: 30),
                            // Username field
        
                            Material(
                              elevation: 1.5, // Adjust the elevation for more or less shadow
                              borderRadius: BorderRadius.circular(10),
                              //shadowColor: Colors.grey.withOpacity(0.5),
                              child: TextField(
                                //controller: controller,
                                maxLines: 1,
                                
                                style: const TextStyle(
                                  color: Colors.black,
                                ),
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(16),
                                  labelText: "Username",
                                  hintText: "UserName",
                                  
                                  filled: true,
                                  fillColor: Colors.white,
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10), 
                                      borderSide: BorderSide.none,
                                    ),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10), 
                                      borderSide: BorderSide.none,
                                    ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10), 
                                      borderSide: BorderSide.none,
                                    ),
                                  hintStyle: const TextStyle(
                                    color: Colors.grey,
                                  ),
                                )
                              ),
                            ),
                            SizedBox(height: 20),
        
                            Material(
                              elevation: 1.5,
                              borderRadius: BorderRadius.circular(10),
                              child: TextField(
                                //controller: controller,
                                maxLines: 1,
                                style: const TextStyle(
                                  color: Colors.black,
                                ),
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(16),
                                  labelText: "Password",
                                  hintText: "Password",
                                  filled: true,
                                  fillColor: Colors.white,
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide.none,
                                    ),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10), 
                                      borderSide: BorderSide.none,
                                      
                                    ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10), 
                                      borderSide: BorderSide.none,
                                      
                                    ),
                                  hintStyle: const TextStyle(
                                    color: Colors.grey,
                                  ),
                                )
                              ),
                            ),
                            // TextFormField(
                            //   style: TextStyle(fontSize: 10),
                            //   decoration: InputDecoration(
                            //     labelText: 'Username',
                            //     hintText: "Username",
        
                            //     border: OutlineInputBorder(
                            //       borderRadius: BorderRadius.circular(10),
                            //     ),
                            //     focusedBorder: OutlineInputBorder(
                            //       borderRadius: BorderRadius.circular(10),
                            //     ),
                            //     enabledBorder: OutlineInputBorder(
                            //       borderRadius: BorderRadius.circular(10),
                            //     ),
        
                                
                            //   ),
                            // ),
                            
                            // SizedBox(height: 20),
                            // // Password field
                            // TextFormField(
                            //   obscureText: true,
                            //   decoration: InputDecoration(
                            //     labelText: 'Password',
                            //     border: OutlineInputBorder(),
                            //   ),
                            // ),
                            SizedBox(height: 30),
                            // Login button
                            // ElevatedButton(
                            //   onPressed: () {},
                            //   style: ElevatedButton.styleFrom(
                            //     foregroundColor: Colors.blueAccent, // Background color
                            //     minimumSize: Size(double.infinity, 50), // Full width button
                            //   ),
                            //   child: Text('LOGIN'),
                            // ),
        
                            Container(
                              width: double.infinity,
                              height: 50,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.lightBlueAccent.shade400,
                                    Color.fromARGB(255, 11, 46, 107),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  shadowColor: Colors.transparent,
                                ),
                                child: Text('LOGIN', style: TextStyle(color: Colors.white),),
                              ),
                            ),
                            SizedBox(height: 10),
                            // Forgot password
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Forgot Password?',
                                style: TextStyle(color: Color.fromARGB(255, 11, 46, 107),),
                              ),
                            ),
        
                            SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                  ),
        
                  SizedBox(height: 20),
        
                  Center(
                    child: Text(" © 2024 DEMO GROUP . All Rights Reserved",
                    style: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.normal ),
                    ),
                  ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


