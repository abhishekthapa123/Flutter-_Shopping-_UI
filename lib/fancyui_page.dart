import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/foundation.dart';

class FancyUI extends StatelessWidget {
  const FancyUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: 
            Stack(
                children: [
                  (defaultTargetPlatform == TargetPlatform.android)
                      ? Image.network(
                          'https://imgmedia.lbb.in/media/2020/05/5eb27784fad1a97737932f85_1588754308827.jpg',
                          height: double.infinity,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                          return Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("NO WIFI CONNECTION"),
                                Icon(Icons.network_wifi)
                              ],
                            ),
                          );
                        }, frameBuilder:
                              (context, child, frame, wasSynchronouslyLoaded) {
                          return child;
                        }, loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) {
                            return child;
                          } else {
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                        })
                      : (Image.asset(
                          'assets/images/clothes.jpg',
                          height: double.infinity,
                          width: double.infinity,
                          fit: BoxFit.fill,
                        )),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0x00f5f5f5), Color(0xfff5f5f5)])),
                      width: double.infinity,
                      height: 500,
                    ),
                  ),
                  SafeArea(
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      height: double.infinity,
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.arrow_back),
                              Padding(
                                padding: const EdgeInsets.only(left: 220.0),
                                child: Icon(Icons.share),
                              ),
                              ElevatedButton(
                                
                                  onPressed: () {
                                    Navigator.of(context).push(new MaterialPageRoute(
                                        builder: (BuildContext context) {
                                      return new FancyUI();
                                    }));
                                  },
                                  
                                  style: ElevatedButton.styleFrom(
                                  
                                 primary:Colors.transparent ,
                                 shadowColor: Colors.transparent,
                                  side: BorderSide.none
                                  
                                  ),
                                  child: Icon(Icons.refresh,color: Colors.black,))
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Classic",
                                        style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    Text("\$204",
                                        style: TextStyle(
                                          decoration: TextDecoration.lineThrough,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                        ))
                                  ]),
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Cotton Jacket",
                                        style: TextStyle(
                                            fontSize: 18, fontWeight: FontWeight.bold)),
                                    Text("\$2000",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ))
                                  ]),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star),
                                  Icon(Icons.star),
                                  Icon(Icons.star),
                                  Icon(Icons.star),
                                  Icon(
                                    Icons.star,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    shadows: [Shadow(blurRadius: 2)],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Colors",
                                    style: TextStyle(
                                        fontSize: 15, fontWeight: FontWeight.bold),
                                  )),
                              SizedBox(height: 10.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 16,
                                        width: 16,
                                        decoration: BoxDecoration(boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 1,
                                              spreadRadius: 2)
                                        ], color: Colors.teal, shape: BoxShape.circle),
                                      ),
                                      SizedBox(
                                        width: 15.0,
                                      ),
                                      Container(
                                        height: 16,
                                        width: 16,
                                        decoration: BoxDecoration(boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 1,
                                              spreadRadius: 2)
                                        ], color: Colors.red, shape: BoxShape.circle),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 40,
                                            width: 40,
                                            child: Icon(
                                              Icons.favorite,
                                              color: Colors.red,
                                            ),
                                            decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 1,
                                                    spreadRadius: 1,
                                                  )
                                                ],
                                                color: Colors.white,
                                                shape: BoxShape.circle),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 8.0,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: 40,
                                            width: 40,
                                            child: Padding(
                                              padding: const EdgeInsets.only(left: 2.0),
                                              child: Icon(
                                                Icons.shopping_cart,
                                                color: Colors.brown,
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                      blurRadius: 1, spreadRadius: 1)
                                                ],
                                                shape: BoxShape.circle,
                                                color: Colors.white),
                                          )
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
         
        );
    
  }
}
