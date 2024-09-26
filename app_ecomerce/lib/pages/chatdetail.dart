import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final String contactName;

  ChatScreen({required this.contactName});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<Map<String, dynamic>> messages = [
    {'text': 'Hallo', 'isMe': true, 'time': '12:55'},
    {'text': 'Selamat Datang Di Nike Official Ada Yang Bisa Dibantu?.', 'isMe': false, 'time': '14:13'},
    {'text': 'ok, saya ingin membeli jordan', 'isMe': true, 'time': '14:14'},
    {'text': 'Segera Memesan Sebelum Kehabisan.', 'isMe': false, 'time': '18:58'},
  ];

  final TextEditingController _controller = TextEditingController();

  void _sendMessage() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        messages.add({
          'text': _controller.text,
          'isMe': true,
          'time': _formatCurrentTime(),
        });
      });
      _controller.clear();
    }
  }

  String _formatCurrentTime() {
    final now = DateTime.now();
    return "${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF4C53A5),
        title: Text(
          widget.contactName,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 21,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              reverse: true,
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final message = messages[messages.length - index - 1];
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                  child: Align(
                    alignment: message['isMe'] ? Alignment.centerRight : Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: message['isMe']
                          ? CrossAxisAlignment.end
                          : CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(12.0),
                          decoration: BoxDecoration(
                            color: message['isMe']
                                ? Colors.orange.shade100
                                : Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Text(
                            message['text'],
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          message['time'],
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Type a message...',
                      filled: true,
                      fillColor: Colors.grey[300],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 16.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  icon: const Icon(Icons.send),
                  color: Color(0xFF4C53A5),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
