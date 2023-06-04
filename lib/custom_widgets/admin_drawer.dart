import 'package:bteb_project/helper_class/colors.dart';
import 'package:flutter/material.dart';

class AdminDrawer extends StatelessWidget {
  const AdminDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Container(
          // color: Color(0xff26A6DE),
          child: ListView(
            primary: true,
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              Container(
                height: 200,
                child: DrawerHeader(
                  margin: EdgeInsets.all(0),
                  decoration: const BoxDecoration(
                     color: Color(0xffFFFFFF),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Color(0xff444444),
                            size: 30,
                          ),
                        ),
                      ),
                      Align(
                          alignment: Alignment.topLeft,
                          child:Container(
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Colors.white,
                                      width: 1.5
                                  )
                              ),
                              child: Image.asset('images/logo2.png',height: 50))

                      ),
                      SizedBox(height: 5,),
                      Align(
                          alignment: Alignment.center,
                          child: Text('Admin Panel',style: TextStyle(color: Color(0xff444444)),overflow: TextOverflow.ellipsis,)),
                      SizedBox(height: 15,),
                      Divider(
                        color: Color(0xff444444),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              TextButton(
                onPressed: () {
                  // Navigator.pushNamed(context, ContactPage.routeName);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.home,
                      color: Color(0xff444444),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Dashboard',
                      style: TextStyle(
                        color: Color(0xff444444),
                      ),
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {

                  // Navigator.pushNamed(context, UserProfilePage.routeName);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.person_outline,
                      color: Color(0xff444444),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Assesment',
                      style: TextStyle(
                        color: Color(0xff444444),
                      ),
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {

                  //Navigator.pushNamed(context, HomePage.routeName);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.add_card_outlined,
                      color: Color(0xff444444),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Assessment history',
                      style: TextStyle(
                        color: Color(0xff444444),
                      ),
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {

                  //Navigator.pushNamed(context, HomePage.routeName);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Icons.ac_unit,color: Color(0xff444444),),
                    SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Candidate',
                      style: TextStyle(
                        color: Color(0xff444444),
                      ),
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {

                  // Navigator.pushNamed(context, TransferLogPage.routeName);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.history_outlined,
                      color: Color(0xff444444),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Calender',
                      style: TextStyle(
                        color: Color(0xff444444),
                      ),
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {

                  //Navigator.pushNamed(context, HomePage.routeName);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.local_activity,
                      color: Color(0xff444444),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Settings',
                      style: TextStyle(
                        color: Color(0xff444444),
                      ),
                    ),
                  ],
                ),
              ),
              // TextButton(
              //   onPressed: () {
              //
              //   },
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.start,
              //     children: [
              //       SizedBox(
              //         width: 20,
              //       ),
              //       Icon(
              //         Icons.help_outline,
              //         color: Colors.white,
              //       ),
              //       SizedBox(
              //         width: 10,
              //       ),
              //       const Text(
              //         'Help Center',
              //         style: TextStyle(
              //           color: Colors.white,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              TextButton(
                onPressed: () {
                  // Navigator.pushNamed(context, ContactPage.routeName);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.logout_rounded,
                      color: Color(0xff444444),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Logout',
                      style: TextStyle(
                        color: Color(0xff444444),
                      ),
                    ),
                  ],
                ),
              ),

              // TextButton(
              //   onPressed: () {},
              //   child: Container(
              //     padding: EdgeInsets.all(8),
              //     decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(4),
              //         border: Border.all(color: Colors.white, width: 1)),
              //     child: Align(
              //       alignment: Alignment.centerLeft,
              //       child: Row(
              //         mainAxisSize: MainAxisSize.min,
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           Icon(
              //             Icons.person,
              //             color: Colors.white,
              //           ),
              //           SizedBox(
              //             width: 10,
              //           ),
              //           const Text(
              //             'Sign Up',
              //             style: TextStyle(
              //               color: Colors.white,
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
