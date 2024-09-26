// import 'package:app_ecomerce/widgets/CategoriesWidget.dart';
// import 'package:app_ecomerce/widgets/HomeAppBar.dart';
// import 'package:app_ecomerce/widgets/Itemswidget.dart';
// import 'package:flutter/material.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';


// class Homepage extends StatelessWidget {
//   const Homepage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         children: [
//           const HomeAppBar(),
//           Container(
//             padding: const EdgeInsets.only(top:15),
//             decoration: const BoxDecoration(
//               color: Color(0xFFEDFCF2),
//               borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(35),
//                 topRight: Radius.circular(35),
//               ),
//             ),
//             child: Column(
//               children: [
//                 Container(
//                   margin: const EdgeInsets.symmetric(horizontal: 15),
//                   padding: const EdgeInsets.symmetric(horizontal: 15),
//                   height: 50,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                   child: Row(
//                     children: [
//                       Container(
//                         margin: const EdgeInsets.only(left: 5),
//                         height: 50,
//                         width: 300,
//                         child: TextFormField(
//                           decoration: const InputDecoration(
//                             border: InputBorder.none,
//                             hintText: "Search here...",
//                           ),
//                         ),
//                       ),
//                       const Spacer(),
//                       const Icon(
//                           Icons.camera_alt,
//                           size: 27,
//                           color: Color(0xFF4C53A5),
//                           ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   alignment: Alignment.centerLeft,
//                   margin: const EdgeInsets.symmetric(
//                     vertical: 20,
//                     horizontal: 10,
//                   ),
//                   child: const Text(
//                     'Categories',
//                     style: TextStyle(
//                       fontSize: 25,
//                       fontWeight: FontWeight.bold,
//                       color: Color(0xFF4C53A5),
//                     ),
//                   ),
//                 ),

//                 // categories widget
//                 CategoriesWidget(),

//                 // items
//                 Container(
//                   alignment: Alignment.centerLeft,
//                   margin: 
//                   const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
//                   child:const Text(
//                     'Best Selling', 
//                   style: TextStyle(
//                     fontSize: 25,
//                     fontWeight: FontWeight.bold,
//                     color: Color(0xFF4C53A5),
//                   ),
//                   ),
//                 ),

//                 // item widget
//                 ItemsWidget(),
//               ],
//             ),
//           ),
//         ],
//       ),

//       // Navigation Bar
//       bottomNavigationBar: CurvedNavigationBar(
//         backgroundColor: Colors.transparent,
//         onTap: (index) {},
//         height: 70,
//         color: const Color(0xFF4C53A5),
//         items: const [
//           Icon(
//             Icons.home,
//             size: 30,
//             color: Colors.white,
//           ),
//           Icon(
//             Icons.shopping_cart,
//             size: 30,
//             color: Colors.white,
//           ),
//           Icon(
//             Icons.list,
//             size: 30,
//             color: Colors.white,
//           ),
//         ],
//       ),
//     );
//   }
// }

// from gpt

import 'package:app_ecomerce/pages/accountPage.dart';
import 'package:app_ecomerce/pages/cartPage.dart';
import 'package:app_ecomerce/widgets/CategoriesWidget.dart';
import 'package:app_ecomerce/widgets/HomeAppBar.dart';
import 'package:app_ecomerce/widgets/Itemswidget.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: const [
          HomePageContent(), // Halaman utama
          CartPage(),        // Halaman keranjang
          AccountPage(),     // Halaman akun
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        height: 70,
        color: const Color(0xFF4C53A5),
        items: const [
          Icon(Icons.home, size: 30, color: Colors.white),
          Icon(Icons.shopping_cart, size: 30, color: Colors.white),
          Icon(Icons.account_circle_sharp, size: 30, color: Colors.white),
        ],
        index: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            _pageController.jumpToPage(index);
          });
        },
      ),
    );
  }
}

class HomePageContent extends StatelessWidget {
  const HomePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const HomeAppBar(),
        Container(
          padding: const EdgeInsets.only(top: 15),
          decoration: const BoxDecoration(
            color: Color(0xFFEDFCF2),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
            ),
          ),
          child: Column(
            children: [
              // Search Bar
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search here...",
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.camera_alt,
                      size: 27,
                      color: Color(0xFF4C53A5),
                    ),
                  ],
                ),
              ),

              // Categories Section
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: const Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4C53A5),
                  ),
                ),
              ),
              const CategoriesWidget(),

              // Best Selling Section
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: const Text(
                  'Best Selling',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4C53A5),
                  ),
                ),
              ),
               ItemsWidget(),
            ],
          ),
        ),
      ],
    );
  }
}







