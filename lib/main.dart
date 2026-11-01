import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Taskteam());
}
class Taskteam extends StatelessWidget {
  const Taskteam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold
        (

        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.handshake_outlined),label: "Halls"),
          BottomNavigationBarItem(icon: Icon(Icons.book),label: "Bookink"),

        ]),
        floatingActionButton: FloatingActionButton(
          onPressed:(){},
          child: Icon(Icons.add,size: 20),
          backgroundColor: Color(0xFFD4AF37),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        appBar: AppBar(
          title: SizedBox(
            width: double.infinity,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Text(
                          "My Halls",
                          style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 210,bottom: 8),
                        child: CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage("images/assets/me6.jpg"),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Searsh halls...",
                        filled: true,
                        fillColor: null,
                        hintStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                        prefixIcon: Icon(Icons.search,color: Colors.black,size: 20),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                              style: BorderStyle.none
                          ),
                        ),
                      ),
                    ),
                  )
                ]
            ),
          ),
          toolbarHeight: 180,
          flexibleSpace: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                gradient: LinearGradient(colors: [
                  Color(0xFF2C2A28),
                  Color(0xFF1C1C1C),
                ])
            ),
          ),
        ),


        ///////////This Body
        body: ListView(
            children: [
              Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        width: 420,
                        height: 440,
                        decoration: BoxDecoration(
                          color: Color(0xFFEFEBEB),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: 420,
                              height: 220,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.vertical(top: Radius.circular(20)
                                          ),
                                          child: Image.network(
                                            "https://images.unsplash.com/photo-1566073771259-6a8506099945?w=800",
                                            height: 220,
                                            width: double.infinity,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Positioned(
                                            top: 15,
                                            left: 305,
                                            child: ElevatedButton(
                                              onPressed:(){},
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:  Color(0xFFD4AF37),
                                                foregroundColor: Colors.white,
                                                padding: EdgeInsets.all(20),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(50),
                                                ),
                                              ),
                                              child: Text(
                                                "Available",
                                                style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                                              ),
                                            )

                                        ),
                                      ]
                                  )

                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 190,top: 10),
                                  child: Text("Grand Ballroom",
                                    style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10,left: 10),
                                  child: Row(
                                    children: [
                                      Icon(Icons.person_2,size: 30,color: Colors.grey,),
                                      Text("300 Guests",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.grey),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 30),
                                        child: Icon(Icons.monetization_on,size: 30,color:  Color(0xFFD4AF37),),
                                      ),
                                      Text("\$1200/day",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold, color: Color(0xFF2C2A28)),
                                      )
                                    ],
                                  ),
                                ),

                              ],
                            )
                          ],
                        ),

                      )
                  )
                ],
              ),
// toww
              Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        width: 420,
                        height: 440,
                        decoration: BoxDecoration(
                          color: Color(0xFFEFEBEB),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: 420,
                              height: 220,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.vertical(top: Radius.circular(20)
                                          ),
                                          child: Image.network(
                                            "https://images.unsplash.com/photo-1551882547-ff40c63fe5fa?w=800",
                                            height: 220,
                                            width: double.infinity,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Positioned(
                                            top: 15,
                                            left: 305,
                                            child: ElevatedButton(
                                              onPressed:(){},
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:   Color(0xFFD4AF37),
                                                foregroundColor: Colors.white,
                                                padding: EdgeInsets.all(20),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(50),
                                                ),
                                              ),
                                              child: Text(
                                                "Available",
                                                style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                                              ),
                                            )

                                        ),
                                      ]
                                  )

                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 240,top: 10),
                                  child: Text("Crystal Hall",
                                    style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10,left: 10),
                                  child: Row(
                                    children: [
                                      Icon(Icons.person_2,size: 30,color: Colors.grey,),
                                      Text("150 Guests",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.grey),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 30),
                                        child: Icon(Icons.monetization_on,size: 30,color:  Color(0xFFD4AF37),),
                                      ),
                                      Text("\$8000/day",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color:  Color(0xFF2C2A28),),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),

                      )
                  )
                ],
              ),

              //three






              Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        width: 420,
                        height: 440,
                        decoration: BoxDecoration(
                          color: Color(0xFFEFEBEB),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: 420,
                              height: 220,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.vertical(top: Radius.circular(20)
                                          ),
                                          child: Image.network(
                                            "https://images.unsplash.com/photo-1542314831-068cd1dbfeeb?w=800",
                                            height: 220,
                                            width: double.infinity,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Positioned(
                                            top: 15,
                                            left: 305,
                                            child: ElevatedButton(
                                              onPressed:(){},
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.grey,
                                                foregroundColor: Colors.white,
                                                padding: EdgeInsets.all(20),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(50),
                                                ),
                                              ),
                                              child: Text(
                                                "Booked",
                                                style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                                              ),
                                            )

                                        ),
                                      ]
                                  )

                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 190,top: 10),
                                  child: Text("Grand Ballroom",
                                    style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10,left: 10),
                                  child: Row(
                                    children: [
                                      Icon(Icons.person_2,size: 30,color: Colors.grey,),
                                      Text("200 Guests",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.grey),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 30),
                                        child: Icon(Icons.monetization_on,size: 30,color:  Color(0xFFD4AF37),),
                                      ),
                                      Text("\$1500/day",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color:  Color(0xFF2C2A28),),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),

                      )
                  )
                ],
              ),


//for

              Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        width: 420,
                        height: 440,
                        decoration: BoxDecoration(
                          color: Color(0xFFEFEBEB),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: 420,
                              height: 220,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.vertical(top: Radius.circular(20)
                                          ),
                                          child: Image.network(
                                            "https://images.unsplash.com/photo-1582719478250-c89cae4dc85b?w=800",
                                            height: 220,
                                            width: double.infinity,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Positioned(
                                            top: 15,
                                            left: 305,
                                            child: ElevatedButton(
                                              onPressed:(){},
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:  Color(0xFFD4AF37),
                                                foregroundColor: Colors.white,
                                                padding: EdgeInsets.all(20),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(50),
                                                ),
                                              ),
                                              child: Text(
                                                "Available",
                                                style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                                              ),
                                            )

                                        ),
                                      ]
                                  )

                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 190,top: 10),
                                  child: Text("Grand Ballroom",
                                    style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10,left: 10),
                                  child: Row(
                                    children: [
                                      Icon(Icons.person_2,size: 30,color: Colors.grey,),
                                      Text("150 Guests",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.grey),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 30),
                                        child: Icon(Icons.monetization_on,size: 30,color:  Color(0xFFD4AF37),),
                                      ),
                                      Text("\$950/day",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color:  Color(0xFF2C2A28),),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Row(
                                    children: [


                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),

                      )
                  )
                ],
              ),




              // five


              Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        width: 420,
                        height: 440,
                        decoration: BoxDecoration(
                          color: Color(0xFFEFEBEB),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: 420,
                              height: 220,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.vertical(top: Radius.circular(20)
                                          ),
                                          child: Image.network(
                                            "https://images.unsplash.com/photo-1551882547-ff40c63fe5fa?w=800",
                                            height: 220,
                                            width: double.infinity,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Positioned(
                                            top: 15,
                                            left: 305,
                                            child: ElevatedButton(
                                              onPressed:(){},
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:  Color(0xFFD4AF37),
                                                foregroundColor: Colors.white,
                                                padding: EdgeInsets.all(20),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(50),
                                                ),
                                              ),
                                              child: Text(
                                                "Available",
                                                style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                                              ),
                                            )

                                        ),
                                      ]
                                  )

                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 190,top: 10),
                                  child: Text("Grand Ballroom",
                                    style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10,left: 10),
                                  child: Row(
                                    children: [
                                      Icon(Icons.person_2,size: 30,color: Colors.grey,),
                                      Text("220 Guests",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.grey),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 30),
                                        child: Icon(Icons.monetization_on,size: 30,color:  Color(0xFFD4AF37),),
                                      ),
                                      Text("\$1100/day",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color:  Color(0xFF2C2A28),),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Row(
                                    children: [




                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),

                      )
                  )
                ],
              ),
            ]
        ),
      ),
    );
  }
}
