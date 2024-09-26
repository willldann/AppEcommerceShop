import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CartItemSamples extends StatelessWidget {
  const CartItemSamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         for (int i = 1; i <= 4; i++) 
        Container(
          height: 110,
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Row(
            
            children: [
              Radio(value: '', groupValue: '', activeColor: const Color(0xFF4C53A5), onChanged: (index) {}
              ),
              Container(
                height: 70,
                width: 70,
                margin: const EdgeInsets.only(right: 15),
                child: Image.asset('images/$i.jpg'),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Product Title',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4C53A5),
                      ),
                    ),
                    Text(
                      '\$55',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4C53A5),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Column(
                  children: [],
                ),
              ),
            const  Spacer(),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                    Row(children: [
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 10,
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.add,
                          size: 18,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "01",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF4C53A5),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 10,
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.remove,
                          size: 18,
                        ),
                      ),
                    ],
                    ),
                  ],
                ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}











       // from cht GPT

// import 'package:flutter/material.dart';

// // Data produk contoh
// class CartItem {
//   final String imagePath;
//   final String name;
//   final String description;

//   CartItem({
//     required this.imagePath,
//     required this.name,
//     required this.description,
//   });
// }

// class CartItemsSamples extends StatefulWidget {
//   const CartItemsSamples({super.key});

//   @override
//   _CartItemsSamplesState createState() => _CartItemsSamplesState();
// }

// class _CartItemsSamplesState extends State<CartItemsSamples> {
//   // Untuk melacak status checkbox
//   final List<bool> _selectedItems = List.generate(4, (index) => false);

//   // Contoh data produk
//   final List<CartItem> items = [
//     CartItem(
//       imagePath: 'images/1.jpg',
//       name: 'Adidas Shoes',
//       description: 'Comfortable and stylish shoes.',
//     ),
//     CartItem(
//       imagePath: 'images/2.jpg',
//       name: 'Baggy Jeans',
//       description: 'Trendy baggy jeans for casual wear.',
//     ),
//     CartItem(
//       imagePath: 'images/3.jpg',
//       name: 'Boxy T-shirt',
//       description: 'Casual boxy T-shirt in various colors.',
//     ),
//     CartItem(
//       imagePath: 'images/4.jpg',
//       name: 'Boxy Hoodie',
//       description: 'Warm and cozy boxy hoodie.',
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         for (int i = 0; i < items.length; i++)
//           Container(
//             margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
//             padding: EdgeInsets.all(10),
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(8),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.grey.withOpacity(0.4),
//                   spreadRadius: 1,
//                   blurRadius: 4,
//                   offset: Offset(0, 2),
//                 ),
//               ],
//             ),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Checkbox(
//                   value: _selectedItems[i],
//                   onChanged: (bool? value) {
//                     setState(() {
//                       _selectedItems[i] = value ?? false;
//                     });
//                   },
//                 ),
//                 Container(
//                   height: 70,
//                   width: 70,
//                   margin: EdgeInsets.only(right: 13),
//                   child: Image.asset(items[i].imagePath),
//                 ),
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         items[i].name,
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           color: Color(0xFF4C53A5),
//                           fontSize: 16,
//                         ),
//                       ),
//                       SizedBox(height: 5),
//                       Text(
//                         items[i].description,
//                         style: TextStyle(
//                           color: Colors.grey[500],
//                           fontSize: 12,
//                         ),
//                       ),
//                       SizedBox(height: 10),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           ElevatedButton(
//                             onPressed: () {
//                               // Hapus item yang dipilih
//                               setState(() {
//                                 for (int j = items.length - 1; j >= 0; j--) {
//                                   if (_selectedItems[j]) {
//                                     items.removeAt(j);
//                                     _selectedItems.removeAt(j);
//                                   }
//                                 }
//                               });
//                             },
//                             child: Text('Delete', style: TextStyle(color: Colors.white)),
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: Colors.red,
//                             ),
//                           ),
//                           ElevatedButton(
//                             onPressed: () {
//                               // Aksi beli untuk item yang dipilih
//                               List<String> selectedItemNames = [];
//                               for (int j = 0; j < _selectedItems.length; j++) {
//                                 if (_selectedItems[j]) {
//                                   selectedItemNames.add(items[j].name);
//                                 }
//                               }
//                               if (selectedItemNames.isNotEmpty) {
//                                 ScaffoldMessenger.of(context).showSnackBar(
//                                   SnackBar(
//                                     content: Text('Item ${selectedItemNames.join(', ')} telah berhasil anda beli.'),
//                                   ),
//                                 );
//                               }
//                             },
//                             child: Text('Buy', style: TextStyle(color: Colors.white)),
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: Colors.green,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//       ],
//     );
//   }
// }




