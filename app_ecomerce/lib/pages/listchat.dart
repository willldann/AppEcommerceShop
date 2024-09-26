// import 'package:flutter/material.dart';

// class ChatListPage extends StatelessWidget {
//   final List<Map<String, String>> chats = [
//     {
//       'name': 'Choki',
//       'message': 'Ini masih ada?',
//       'time': '12:30',
//       'avatar': 'https://via.placeholder.com/150',
//     },
//     {
//       'name': 'TataAndriana',
//       'message': 'Kamu dimana?',
//       'time': '12:05',
//       'avatar': 'https://via.placeholder.com/150',
//     },
//     {
//       'name': 'MayaEmpat',
//       'message': 'Halo, terima kasih!',
//       'time': '11:50',
//       'avatar': 'https://via.placeholder.com/150',
//     },
//     {
//       'name': 'Aulia003',
//       'message': 'Pesanan sudah dikirim',
//       'time': '10:30',
//       'avatar': 'https://via.placeholder.com/150',
//     },
//     // Tambahkan chat lain sesuai kebutuhan
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Chat',
//           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,color: Color(0xFF4C53A5)),
//         ),
//         backgroundColor: Colors.white,
//         iconTheme: const IconThemeData(color: Color(0xFF4C53A5)),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.search),
//             onPressed: () {
//               // Implementasi pencarian
//             },
//           ),
//         ],
//       ),
//       body: Column(
//         children: [
//           // Filter bar (Seperti Semua, Belum Dibaca, dll)
//           Container(
//             padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
//             color: Colors.white,
//             child: Row(
//               children: [
//                 TextButton(
//                   onPressed: () {},
//                   child: const Text(
//                     'Semua',
//                     style: TextStyle(
//                       color: Color(0xFF4C53A5),
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//                 const SizedBox(width: 10),
//                 TextButton(
//                   onPressed: () {},
//                   child: const Text(
//                     'Belum Dibaca',
//                     style: TextStyle(color: Color.fromARGB(255, 114, 123, 216)),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           const Divider(height: 1),
//           // List Chat
//           Expanded(
//             child: ListView.builder(
//               itemCount: chats.length,
//               itemBuilder: (context, index) {
//                 final chat = chats[index];
//                 return ListTile(
//                   leading: CircleAvatar(
//                     backgroundImage: NetworkImage(chat['avatar']!),
//                     radius: 25,
//                   ),
//                   title: Text(
//                     chat['name']!,
//                     style: const TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   subtitle: Text(chat['message']!),
//                   trailing: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         chat['time']!,
//                         style: const TextStyle(color: Colors.grey, fontSize: 12),
//                       ),
//                       if (index == 0) // Misalnya, jika ada pesan belum dibaca
//                         Container(
//                           margin: const EdgeInsets.only(top: 5),
//                           padding: const EdgeInsets.all(6),
//                           decoration: const BoxDecoration(
//                             color: Colors.red,
//                             shape: BoxShape.circle,
//                           ),
//                           child: const Text(
//                             '1',
//                             style: TextStyle(color: Colors.white, fontSize: 12),
//                           ),
//                         )
//                     ],
//                   ),
//                   onTap: () {
//                     // Navigasi ke halaman detail chat
//                   },
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

class ChatListPage extends StatelessWidget {
  final List<Map<String, String>> chats = [
    {
      'name': 'Nike Official',
      'message': 'Segera Memesan Sebelum Kehabisan.',
      'time': '12:30',
      'avatar': 'images/7.jpg', // Ganti dengan nama aset lokal
    },
    {
      'name': 'Expander',
      'message': 'Kamu dimana?',
      'time': '12:05',
      'avatar': 'images/5.jpg', // Ganti dengan nama aset lokal
    },
    {
      'name': 'Adidas Official',
      'message': 'Halo, terima kasih!',
      'time': '11:50',
      'avatar': 'images/6.jpg', // Ganti dengan nama aset lokal
    },
    {
      'name': 'Skincare',
      'message': 'Pesanan sudah dikirim',
      'time': '10:30',
      'avatar': 'images/3.jpg', // Ganti dengan nama aset lokal
    },
    // Tambahkan chat lain sesuai kebutuhan
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'List Chat',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Color(0xFF4C53A5),
          ),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Color(0xFF4C53A5)),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Implementasi pencarian
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Filter bar (Seperti Semua, Belum Dibaca, dll)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 19.0, vertical: 8.0),
            color: Colors.white,
            child: Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Semua',
                    style: TextStyle(
                      color: Color(0xFF4C53A5),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Belum Dibaca',
                    style: TextStyle(color: Color.fromARGB(255, 114, 123, 216)),
                  ),
                ),
              ],
            ),
          ),
          const Divider(height: 1),
          // List Chat
          Expanded(
            child: ListView.builder(
              itemCount: chats.length,
              itemBuilder: (context, index) {
                final chat = chats[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(chat['avatar']!), // Ganti NetworkImage dengan AssetImage
                    radius: 25,
                  ),
                  title: Text(
                    chat['name']!,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(chat['message']!),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        chat['time']!,
                        style: const TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      if (index == 0) // Misalnya, jika ada pesan belum dibaca
                        Container(
                          margin: const EdgeInsets.only(top: 5),
                          padding: const EdgeInsets.all(6),
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                          child: const Text(
                            '1',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        )
                    ],
                  ),
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      "ChatDetail",
                      // arguments: {
                      //   'contactName': chat['name']!,
                      //   'avatarAsset': chat['avatar']!,
                      // },
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

