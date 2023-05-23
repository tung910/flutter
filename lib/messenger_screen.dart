import 'package:flutter/material.dart';
import 'package:flutter_application_learn_1/contacts_screen.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(left: 16),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://picsum.photos/200/300'),
          ),
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
        Padding(
          padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search...",
              hintStyle: TextStyle(color: Colors.grey.shade600),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey.shade600,
                size: 20,
              ),
              filled: true,
              fillColor: Colors.grey.shade100,
              contentPadding: const EdgeInsets.all(8),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.grey.shade100)),
            ),
          ),
        ),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int i = 0; i < 10; i++)
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, top: 15, bottom: 15),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            const CircleAvatar(
                              radius: 20,
                              backgroundImage:
                                  NetworkImage('https://picsum.photos/200/300'),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.green,
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Opacity(
                          opacity: 0.3,
                          child: Text(
                            i == 0 ? 'Your story' : users[i].name,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        )
                      ],
                    ),
                  )
              ],
            )),
        const Expanded(
          child: ConversationList(),
        )
      ]),
    );
  }
}

class ActiveUser extends StatelessWidget {
  const ActiveUser({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundImage:
                      NetworkImage('https://picsum.photos/200/300'),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green,
                    ),
                  ),
                )
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      users[index].name,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Opacity(
                      opacity: 0.3,
                      child: Text(
                        '${users[index].desc} · 9:40 AM',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Icon(Icons.radio_button_off)
          ],
        ),
      ),
      onTap: () {},
    );
  }
}

class ConversationList extends StatelessWidget {
  const ConversationList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.only(top: 16),
      itemBuilder: (context, index) => ActiveUser(index: index),
    );
  }
}
