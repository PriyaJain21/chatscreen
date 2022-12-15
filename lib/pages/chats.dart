import 'package:flutter/material.dart';

class ChatPge extends StatelessWidget {
  const ChatPge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  child: Container(
                    height: size.height*0.34,
                    color: Color(0xfffef2fa),
                    child: Padding(
                      padding:
                        EdgeInsets.only(left: size.width*0.03,top: size.height*0.02,right: size.width*0.02),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                              "https://tse4.mm.bing.net/th?id=OIP.lWIF0fxWlXdL4y3H-9-XOAHaJ4&pid=Api&P=0",
                            ),
                          ),
                          Text(
                            "Puzzels",
                            style: TextStyle(
                              color: Colors.pinkAccent,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Icon(Icons.menu)
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  child: Container(
                    margin: EdgeInsets.only(left: size.width*0.03),
                    height: size.height*0.35,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 8,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Container(
                                margin:
                                    EdgeInsets.only(left: 10, right: 10, top: size.height*0.07),
                                height: size.height*0.25,
                                width: size.width*0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        "https://tse1.mm.bing.net/th?id=OIP.KU6oNv_eed8I00KJRz2mYwHaIE&pid=Api&P=0",
                                      ),
                                      fit: BoxFit.contain),
                                ),
                              )
                            ],
                          );
                        }),
                  ),
                ),
                Positioned(child: Center(
                  child: Container(
                    margin: EdgeInsets.only(top: size.height*0.28,left: size.width*0.05,right: size.width*0.05),
                    height: size.height*0.05,
                    color: Colors.white70,

                    child: TextFormField(
                      cursorColor: Colors.black,
                      cursorHeight: 15,
                      textAlign: TextAlign.start,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                      ),
                    ),
                  ),
                )),
                Positioned(
                    child: Container(
                  margin: EdgeInsets.only(top: size.height*0.33),
                  //color: Colors.red,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      )),
                  height: size.height*0.63,
                  child: ListView.builder(
                    padding: EdgeInsets.only(top: 10),
                      scrollDirection: Axis.vertical,
                      itemCount: 10,
                      itemBuilder: (context, item) {
                        return Card(
                          elevation: 5,
                          child: ListTile(
                            onTap: () {},
                            leading: CircleAvatar(
                              backgroundImage:  NetworkImage(
                                  "https://tse1.mm.bing.net/th?id=OIP.KU6oNv_eed8I00KJRz2mYwHaIE&pid=Api&P=0",
                                ),
                            ),
                            title: Row(
                              children: [
                                Text("Jorden", style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87
                                ),),
                                SizedBox(width: 5,),
                                Icon(Icons.check_circle,color: Colors.deepPurpleAccent,size: 15,)
                              ],
                            ),
                            subtitle: Text("Hii!", style: TextStyle(
                                fontSize: 13,
                                color: Colors.black54
                            ),),
                            trailing: Column(
                              children: [
                                Text("13:30",style: TextStyle(fontSize: 13),),
                                Icon(Icons.arrow_circle_right_sharp,color: Colors.pinkAccent,size: 15,)
                              ],
                            ),
                          ),
                        );
                      }),
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
