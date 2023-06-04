import 'package:bteb_project/pages/rto_registration_page.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../helper_class/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  static const String routeName='/login';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _selectedItem='RTO';
  bool showPass=true;
  final List<String> _items = ['RTO', 'Assessor', 'Admin'];
  final _formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColors.primaryColor,
        body: Center(
          child:
          ListView(
            shrinkWrap: true,
            children: [
              Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    //SvgPicture.asset("svg/logo.svg"),
                    Image.asset('images/logo2.png',height: 140,width: 140,),
                    SizedBox(height: 20,),
                    Text('Transforming TVET Education in Bangladesh'),
                    SizedBox(height: 10,),
                    Text('SMART BTEB Assessment System',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                    SizedBox(height: 20,),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text('Login as'),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 20),
                          child: DropdownButtonFormField2<String>(
                            value: _selectedItem,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder:OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(
                                      color: Colors.white
                                  )
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(
                                      color: Colors.deepPurple
                                  )
                              ),
                              contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 2,
                                  )
                              ),
                              // Additional decoration options...
                            ),
                            items: _items.map((String item) {
                              return DropdownMenuItem<String>(
                                value: item,
                                child: Text(item),
                              );
                            }).toList(),
                            onChanged: (value) {
                              setState(() {
                                _selectedItem = value!;
                              });
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please select an item';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text('Email'),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 20),
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder:OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(
                                      color: Colors.white
                                  )
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(
                                      color: Colors.deepPurple
                                  )
                              ),
                              contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 2,
                                  )
                              ),
                              hintText: 'name@example.com'
                              // Additional decoration options...
                            ),
                            validator: (value){
                              if(value==null||value.isEmpty){
                                return 'Email is required';
                              }
                            },
                          )
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text('Password'),
                        ),
                        Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 20),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  suffixIcon: IconButton(onPressed: (){
                                    setState(() {
                                      showPass=!showPass;
                                      print(showPass);
                                    });
                                  }, icon: showPass?Icon(Icons.visibility_outlined):
                                  Icon(Icons.visibility_off_outlined)),
                                  enabledBorder:OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: BorderSide(
                                          color: Colors.white
                                      )
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: BorderSide(
                                          color: Colors.deepPurple
                                      )
                                  ),
                                  contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                        width: 2,
                                      )
                                  ),
                                  hintText: '**************'
                                // Additional decoration options...
                              ),
                              validator: (value){
                                if(value==null||value.isEmpty){
                                  return 'Password is required';
                                }
                              },
                              obscureText: showPass,

                            )
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child:  Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: CustomColors.blueColor,
                        ),
                        child: TextButton(
                          onPressed: () {
                            if(_formKey.currentState!.validate()){
                              if(_selectedItem=='RTO'){
                                Navigator.pushNamed(context, RtoRegistration.routeName);
                              }
                            }
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                          child: Text('Login',style: TextStyle(fontSize: 15,color: Colors.white),),
                        ),
                      )
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Resister as a'),
                        SizedBox(width: 5,),
                        Text('${_selectedItem}',style: TextStyle(color: CustomColors.blueColor),),
                      ],
                    )



                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
