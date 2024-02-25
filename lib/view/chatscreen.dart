import 'package:flutter/material.dart';
import 'package:flutter_application_12/view/dammydb.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<Message> messages = [
    Message(
        content: " Rorem ipsum dolor sit adipiscing elit",
        isSentByCurrentUser: false),
    Message(
        content: "Rorem ipsum dolor sit adipiscing elit",
        isSentByCurrentUser: true),
    Message(
        content: "Rorem ipsum dolor sit adipiscing elit",
        isSentByCurrentUser: false),
    Message(
        content: "Rorem ipsum dolor sit adipiscing elit",
        isSentByCurrentUser: true),
    Message(
        content: "Rorem ipsum dolor sit adipiscing elit",
        isSentByCurrentUser: true),
    Message(
        content: "Rorem ipsum dolor sit adipiscing elit",
        isSentByCurrentUser: false),
    Message(
        content: "Rorem ipsum dolor sit adipiscing elit",
        isSentByCurrentUser: true),
    Message(
        content: "Rorem ipsum dolor sit adipiscing elit",
        isSentByCurrentUser: true),
    Message(
        content: "Rorem ipsum dolor sit adipiscing elit",
        isSentByCurrentUser: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Dr.Upul",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.blue),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Icon(Icons.call),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Icon(Icons.videocam),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 10, bottom: 10),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  padding:
                      EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 10),
                  child: Align(
                    alignment: (messages[index].isSentByCurrentUser == false
                        ? Alignment.topLeft
                        : Alignment.topRight),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: (messages[index].isSentByCurrentUser == false
                            ? Colors.grey.shade200
                            : Colors.blue[200]),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Text(messages[index].content),
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Write Here",
                      suffixIcon: Icon(Icons.photo_camera),
                      prefixIcon: Icon(Icons.mood),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.send,
                    color: Colors.blue,
                  ),
                  onPressed: () {
                    setState(() {
                      messages.add(Message(
                          content: "You: Hello!", isSentByCurrentUser: false));
                    });
                  },
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.mic,
                      color: Colors.blue,
                    ))
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: '',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "")
        ],
      ),
    );
  }
}
