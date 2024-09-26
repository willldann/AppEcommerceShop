import 'package:app_ecomerce/widgets/ItemBottomNavBar.dart';
import 'package:app_ecomerce/widgets/itemAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:clippy_flutter/clippy_flutter.dart';



class itemsdetailpage extends StatelessWidget {
  itemsdetailpage({super.key});

  List<Color> myColor = [
    Colors.red,
    Colors.green,
    Colors.grey,
    Colors.blue,
    Colors.pink,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Itemappbar(),
          Padding(padding: EdgeInsets.all(16),
          child: Image.asset('images/1.jpg',
          height: 300,
          ),
          ),
          Arc(
            edge: Edge.TOP,
            arcType: ArcType.CONVEY,
            height:30,
            child: Container(
              width: double.infinity,
              color: Color.fromARGB(255, 238, 237, 237),
              child:Padding(padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(
                  top: 45,
                  bottom: 15,
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Adidas Knu School',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          color: Color(0xFF4C53A5),
                        ),
                      )
                    ],
                  ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 5,
                      bottom: 10,
                      ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RatingBar.builder(
                          initialRating: 4,
                          minRating: 1,
                          direction: Axis.horizontal,
                          itemCount: 5,
                          itemSize: 20,
                          itemPadding: 
                          const EdgeInsets.symmetric(horizontal: 4),
                          itemBuilder: (context,_) => const Icon(
                           Icons.favorite,
                           color: Color(0xFF4C53A5),
                          ),
                           onRatingUpdate: (index) {},
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 3,
                                      blurRadius: 10,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: Icon(
                                  Icons.remove,
                                  size: 18,
                                ),
                              ),
                              Container(
                                margin: 
                                const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  '01',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF4C53A5),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 3,
                                      blurRadius: 10,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: Icon(
                                  Icons.add,
                                  size: 18,
                                ),
                              )
                            ],
                          ),
                      ],
                    ),
                  ),
                  Padding(padding: 
                  EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 17,
                      color: Color(0xFF4C53A5),
                    ),
                  ),
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    children: [
                      Text(
                        'Size',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color(0xFF4C53A5),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Row(
                        children: [
                          for (int i = 1; i <= 5; i++)
                          Container(
                            height: 30,
                            width: 30,
                            alignment: Alignment.center,
                            margin: 
                            const EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 8,
                                ),
                              ],
                            ),
                            child: Text(
                              i.toString(),
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF4C53A5),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    children: [
                      const Text(
                        'Color',
                        style: TextStyle(
                          color: Color(0xFF4C53A5),
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Row(
                        children: [
                          for (int i = 0; i < 5; i++)
                          Container(
                            height: 30,
                            width: 30,
                            alignment: Alignment.center,
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              color: myColor [i],
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 8,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  ),
                ],
              ),
              ) ,
            ),
          ),
        ],
      ),
      bottomNavigationBar: ItemBottomNavBar(),
    );
  }
}