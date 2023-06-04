import 'package:bteb_project/helper_class/colors.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';

import '../helper_class/rto_tabs.dart';

class RtoRegistration extends StatefulWidget {
  const RtoRegistration({Key? key}) : super(key: key);
  static const String routeName='/rto_reg';

  @override
  State<RtoRegistration> createState() => _RtoRegistrationState();
}

class _RtoRegistrationState extends State<RtoRegistration> with TickerProviderStateMixin{
  var selectedTab='RTO Registration';
  late TabController tabController;
  String _selectedRadio = 'yes';

  @override
  void initState() {
    tabController = TabController(length: RtoTabs.rto_tabs.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('RTO Registration',style: TextStyle(fontSize: 18),),),

        body: DefaultTabController(
          length: RtoTabs.rto_tabs.keys.length,

          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text('$selectedTab',style: TextStyle(fontSize: 18),),
                ),
              ),
              ButtonsTabBar(
                controller: tabController,
                duration: 100,
                tabs: RtoTabs.rto_tabs.keys.map((tabs){
                  final key = tabs;
                  final value = RtoTabs.rto_tabs[key];

                  return  Tab(
                     icon: key,
                    text: value,
                  );
                }).toList(),
                onTap: (index){
                  print(index);
                  setState(() {
                    selectedTab=RtoTabs.rto_tabs.values.elementAt(index);
                  });
                },
              ),

              Expanded(
                child: TabBarView(

                  controller: tabController,
                  physics: NeverScrollableScrollPhysics(),
                  children: <Widget>[
                    BasicProfileWidgetTab(),
                    PhysicalInfrastructureWidgetTab(),
                    Center(
                      child: Icon(Icons.directions_bike),
                    ),
                    Center(
                      child: Icon(Icons.directions_car),
                    ),
                    Center(
                      child: Icon(Icons.directions_transit),
                    ),
                    Center(
                      child: Icon(Icons.directions_bike),
                    ),
                    Center(
                      child: Icon(Icons.directions_bike),
                    ),
                    Center(
                      child: Icon(Icons.directions_car),
                    ),
                    Center(
                      child: Icon(Icons.directions_transit),
                    ),
                    Center(
                      child: Icon(Icons.directions_bike),
                    ),
                  ],

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  ListView BasicProfileWidgetTab() {
    return ListView(
                shrinkWrap: true,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('Name of RTO'),
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
                                hintText: 'Pencilbox Training Institute'
                              // Additional decoration options...
                            ),
                            validator: (value){
                              if(value==null||value.isEmpty){
                                return 'Password is required';
                              }
                            },

                          )
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('Name of RTO Bangla'),
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
                                hintText: ''
                              // Additional decoration options...
                            ),
                            validator: (value){
                              if(value==null||value.isEmpty){
                                return 'Password is required';
                              }
                            },

                          )
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('Type of RTO'),
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
                                hintText: ''
                              // Additional decoration options...
                            ),
                            validator: (value){
                              if(value==null||value.isEmpty){
                                return 'Password is required';
                              }
                            },

                          )
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('Type of Ownership'),
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
                                hintText: ''
                              // Additional decoration options...
                            ),
                            validator: (value){
                              if(value==null||value.isEmpty){
                                return 'Password is required';
                              }
                            },

                          )
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('Name of Ministry/Division'),
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
                                hintText: ''
                              // Additional decoration options...
                            ),
                            validator: (value){
                              if(value==null||value.isEmpty){
                                return 'Password is required';
                              }
                            },

                          )
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('Name of Agency'),
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
                                hintText: ''
                              // Additional decoration options...
                            ),
                            validator: (value){
                              if(value==null||value.isEmpty){
                                return 'Password is required';
                              }
                            },

                          )
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('Year of Establishment'),
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
                                hintText: ''
                              // Additional decoration options...
                            ),
                            validator: (value){
                              if(value==null||value.isEmpty){
                                return 'Password is required';
                              }
                            },

                          )
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('Location of RTO'),
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
                                hintText: ''
                              // Additional decoration options...
                            ),
                            validator: (value){
                              if(value==null||value.isEmpty){
                                return 'Password is required';
                              }
                            },

                          )
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('Country'),
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
                                hintText: ''
                              // Additional decoration options...
                            ),
                            validator: (value){
                              if(value==null||value.isEmpty){
                                return 'Password is required';
                              }
                            },

                          )
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('Division/State'),
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
                                hintText: ''
                              // Additional decoration options...
                            ),
                            validator: (value){
                              if(value==null||value.isEmpty){
                                return 'Password is required';
                              }
                            },

                          )
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('District/City'),
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
                                hintText: ''
                              // Additional decoration options...
                            ),
                            validator: (value){
                              if(value==null||value.isEmpty){
                                return 'Password is required';
                              }
                            },

                          )
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('Upazila/Sub-district'),
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
                                hintText: ''
                              // Additional decoration options...
                            ),
                            validator: (value){
                              if(value==null||value.isEmpty){
                                return 'Password is required';
                              }
                            },

                          )
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('Post office'),
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
                                hintText: ''
                              // Additional decoration options...
                            ),
                            validator: (value){
                              if(value==null||value.isEmpty){
                                return 'Password is required';
                              }
                            },

                          )
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('House road'),
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
                                hintText: ''
                              // Additional decoration options...
                            ),
                            validator: (value){
                              if(value==null||value.isEmpty){
                                return 'Password is required';
                              }
                            },

                          )
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('Contact Number'),
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
                                hintText: ''
                              // Additional decoration options...
                            ),
                            validator: (value){
                              if(value==null||value.isEmpty){
                                return 'Password is required';
                              }
                            },

                          )
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('Email Address'),
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
                                hintText: ''
                              // Additional decoration options...
                            ),
                            validator: (value){
                              if(value==null||value.isEmpty){
                                return 'Password is required';
                              }
                            },

                          )
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('Is there any committee?'),
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 20),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              RadioListTile(
                                title: Text('Yes'),
                                value: 'yes',
                                selected: true,
                                groupValue: _selectedRadio,
                                onChanged: (value) {
                                  setState(() {
                                    _selectedRadio = value!;
                                  });
                                },
                              ),
                              RadioListTile(
                                title: Text('No'),
                                value: 'no',
                                groupValue: _selectedRadio,
                                onChanged: (value) {
                                  setState(() {
                                    _selectedRadio = value!;
                                  });
                                },
                              ),
                            ],
                          )
                      ),
                      SizedBox(height: 20,),
                      Align(
                          alignment: Alignment.center,
                          child: TextButton(
                              onPressed: (){
                                tabController.animateTo(1);
                              },
                              style: TextButton.styleFrom(
                                  backgroundColor: Colors.white
                              ),
                              child: Container(
                                  width: 100,
                                  alignment: Alignment.center,
                                  child: Text('Next',style: TextStyle(fontSize: 16),))))
                    ],
                  ),
                  SizedBox(height: 20,),
                ],
              );
  }

  ListView PhysicalInfrastructureWidgetTab() {
    return ListView(
      shrinkWrap: true,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text('Construction size of the building'),
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
                      hintText: ''
                    // Additional decoration options...
                  ),
                  validator: (value){
                    if(value==null||value.isEmpty){
                      return 'Password is required';
                    }
                  },

                )
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text('Ownership status of the building'),
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
                      hintText: ''
                    // Additional decoration options...
                  ),
                  validator: (value){
                    if(value==null||value.isEmpty){
                      return 'Password is required';
                    }
                  },

                )
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text('Total area of the center (Square Feet)'),
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
                      hintText: ''
                    // Additional decoration options...
                  ),
                  validator: (value){
                    if(value==null||value.isEmpty){
                      return 'Password is required';
                    }
                  },

                )
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text('Total area of the center (Square Meter)'),
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
                      hintText: ''
                    // Additional decoration options...
                  ),
                  validator: (value){
                    if(value==null||value.isEmpty){
                      return 'Password is required';
                    }
                  },

                )
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text('Number of floor'),
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
                      hintText: ''
                    // Additional decoration options...
                  ),
                  validator: (value){
                    if(value==null||value.isEmpty){
                      return 'Password is required';
                    }
                  },

                )
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text('Number of classroom'),
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
                      hintText: ''
                    // Additional decoration options...
                  ),
                  validator: (value){
                    if(value==null||value.isEmpty){
                      return 'Password is required';
                    }
                  },

                )
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text('Average size of the classroom (Square Meter)'),
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
                      hintText: ''
                    // Additional decoration options...
                  ),
                  validator: (value){
                    if(value==null||value.isEmpty){
                      return 'Password is required';
                    }
                  },

                )
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text('Number of workshops'),
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
                      hintText: ''
                    // Additional decoration options...
                  ),
                  validator: (value){
                    if(value==null||value.isEmpty){
                      return 'Password is required';
                    }
                  },

                )
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text('Average size of the workshops (Square Meter)'),
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
                      hintText: ''
                    // Additional decoration options...
                  ),
                  validator: (value){
                    if(value==null||value.isEmpty){
                      return 'Password is required';
                    }
                  },

                )
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text('Number of office rooms'),
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
                      hintText: ''
                    // Additional decoration options...
                  ),
                  validator: (value){
                    if(value==null||value.isEmpty){
                      return 'Password is required';
                    }
                  },

                )
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text('Number of trainer room'),
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
                      hintText: ''
                    // Additional decoration options...
                  ),
                  validator: (value){
                    if(value==null||value.isEmpty){
                      return 'Password is required';
                    }
                  },

                )
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text('Number of washrooms'),
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
                      hintText: ''
                    // Additional decoration options...
                  ),
                  validator: (value){
                    if(value==null||value.isEmpty){
                      return 'Password is required';
                    }
                  },

                )
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text('Number of female washrooms'),
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
                      hintText: ''
                    // Additional decoration options...
                  ),
                  validator: (value){
                    if(value==null||value.isEmpty){
                      return 'Password is required';
                    }
                  },

                )
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text('Is there internet facilities?'),
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
                      hintText: ''
                    // Additional decoration options...
                  ),
                  validator: (value){
                    if(value==null||value.isEmpty){
                      return 'Password is required';
                    }
                  },

                )
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text('Is there electricity connections?'),
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
                      hintText: ''
                    // Additional decoration options...
                  ),
                  validator: (value){
                    if(value==null||value.isEmpty){
                      return 'Password is required';
                    }
                  },

                )
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text('Is there sufficient fire fighting equipment?'),
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
                      hintText: ''
                    // Additional decoration options...
                  ),
                  validator: (value){
                    if(value==null||value.isEmpty){
                      return 'Password is required';
                    }
                  },

                )
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text('Is there library facility?'),
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
                      hintText: ''
                    // Additional decoration options...
                  ),
                  validator: (value){
                    if(value==null||value.isEmpty){
                      return 'Password is required';
                    }
                  },

                )
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text('Is there facility for safe drinking water?'),
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
                      hintText: ''
                    // Additional decoration options...
                  ),
                  validator: (value){
                    if(value==null||value.isEmpty){
                      return 'Password is required';
                    }
                  },

                )
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text('Is there sufficient light and vantilation?'),
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
                      hintText: ''
                    // Additional decoration options...
                  ),
                  validator: (value){
                    if(value==null||value.isEmpty){
                      return 'Password is required';
                    }
                  },

                )
            ),

            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text('Is there infrastructure friendly for people with disability?'),
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
                      hintText: ''
                    // Additional decoration options...
                  ),
                  validator: (value){
                    if(value==null||value.isEmpty){
                      return 'Password is required';
                    }
                  },

                )
            ),


            SizedBox(height: 20,),
            Align(
                alignment: Alignment.center,
                child: TextButton(
                    onPressed: (){
                      tabController.animateTo(2);
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.white
                    ),
                    child: Container(
                        width: 100,
                        alignment: Alignment.center,
                        child: Text('Next',style: TextStyle(fontSize: 16),))))
          ],
        ),
        SizedBox(height: 20,),
      ],
    );
  }
}


