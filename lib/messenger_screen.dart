import 'package:flutter/material.dart';

class MessengerScreen extends StatefulWidget {
  const MessengerScreen({super.key});

  @override
  State<MessengerScreen> createState() => _MessengerScreenState();
}

class _MessengerScreenState extends State<MessengerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CircleAvatar(
          backgroundImage: NetworkImage('https://picsum.photos/200/300'),
        ),
        title: const Text(
          'Chats',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w700, color: Colors.black),
        ),
        actions: [
          Image.asset('assets/images/Oval.png', width: 40, height: 40),
          const SizedBox(width: 12),
          Image.asset('assets/images/Message.png', width: 40, height: 40),
          const SizedBox(width: 16),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        leadingWidth: 40,
      ),
      body: Column(children: [
        Container(
          height: 50,
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: const TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)))),
          ),
        )
      ]),
    );
  }
}
