import 'package:flutter/material.dart';

List<User> users = <User>[
  User('https://picsum.photos/seed/picsum/200/300', 'Joe', 'In a word far away',
      Status.online, '9:30 AM', false),
  User('https://picsum.photos/200/300', 'Bill Gates', 'What I`m doing here?',
      Status.offline, '4:36 PM', true),
  User('https://picsum.photos/200/300', 'Mark Zuckerberg', 'Really Busy',
      Status.offline, '4:36 PM', true),
  User('https://picsum.photos/seed/picsum/200/300', 'Joe', 'In a word far away',
      Status.online, '9:30 AM', false),
  User('https://picsum.photos/seed/picsum/200/300', 'Joe', 'In a word far away',
      Status.online, '9:30 AM', false),
  User('https://picsum.photos/200/300', 'Bill Gates', 'What I`m doing here?',
      Status.offline, '4:36 PM', true),
  User('https://picsum.photos/200/300', 'Jeff Bezos', 'Really Busy',
      Status.offline, '4:36 PM', true),
  User('https://picsum.photos/200/300', 'Marissa', 'In a word far away',
      Status.online, '9:30 AM', false),
  User('https://picsum.photos/seed/picsum/200/300', 'Joe', 'In a word far away',
      Status.online, '9:30 AM', false),
  User('https://picsum.photos/200/300', 'Bill Gates', 'What I`m doing here?',
      Status.offline, '4:36 PM', true),
  User('https://picsum.photos/200/300', 'Mark Zuckerberg', 'Really Busy',
      Status.offline, '4:36 PM', true),
  User('https://picsum.photos/seed/picsum/200/300', 'Joe', 'In a word far away',
      Status.online, '9:30 AM', false),
  User('https://picsum.photos/seed/picsum/200/300', 'Joe', 'In a word far away',
      Status.online, '9:30 AM', false),
  User('https://picsum.photos/200/300', 'Bill Gates', 'What I`m doing here?',
      Status.offline, '4:36 PM', true),
  User('https://picsum.photos/200/300', 'Jeff Bezos', 'Really Busy',
      Status.offline, '4:36 PM', true),
  User('https://picsum.photos/200/300', 'Marissa', 'In a word far away',
      Status.online, '9:30 AM', false),
  User('https://picsum.photos/seed/picsum/200/300', 'Joe', 'In a word far away',
      Status.online, '9:30 AM', false),
  User('https://picsum.photos/200/300', 'Bill Gates', 'What I`m doing here?',
      Status.offline, '4:36 PM', true),
  User('https://picsum.photos/seed/picsum/200/300', 'Joe', 'In a word far away',
      Status.online, '9:30 AM', false),
  User('https://picsum.photos/200/300', 'Jeff Bezos', 'Really Busy',
      Status.offline, '4:36 PM', true),
  User('https://picsum.photos/200/300', 'Marissa', 'In a word far away',
      Status.online, '9:30 AM', false),
  User('https://picsum.photos/200/300', 'Bill Gates', 'What I`m doing here?',
      Status.offline, '4:36 PM', true),
  User('https://picsum.photos/seed/picsum/200/300', 'Joe', 'In a word far away',
      Status.online, '9:30 AM', false),
  User('https://picsum.photos/200/300', 'Mark Zuckerberg', 'Really Busy',
      Status.offline, '4:36 PM', true),
  User('https://picsum.photos/seed/picsum/200/300', 'Joe', 'In a word far away',
      Status.online, '9:30 AM', false),
  User('https://picsum.photos/seed/picsum/200/300', 'Joe', 'In a word far away',
      Status.online, '9:30 AM', false),
  User('https://picsum.photos/200/300', 'Bill Gates', 'What I`m doing here?',
      Status.offline, '4:36 PM', true),
  User('https://picsum.photos/200/300', 'Jeff Bezos', 'Really Busy',
      Status.offline, '4:36 PM', true),
  User('https://picsum.photos/200/300', 'Marissa', 'In a word far away',
      Status.online, '9:30 AM', false)
];

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
        centerTitle: true,
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.search)],
      ),
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) => Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                                users[index].desc,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        tooltip: '',
        child: const Icon(Icons.edit),
      ),
    );
  }
}

enum Status { online, offline }

class User {
  String image, name, desc, time;
  Status status;
  bool isSeen = false;

  User(this.image, this.name, this.desc, this.status, this.time, this.isSeen);
}
