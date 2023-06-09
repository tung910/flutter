import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

@RoutePage()
class TourScreen extends StatelessWidget {
  const TourScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Bashkortostan'),
        titleTextStyle: const TextStyle(
            fontSize: 34, fontWeight: FontWeight.w500, color: Colors.black),
        actions: [
          Icon(
            Icons.map_outlined,
            color: Colors.red.shade400,
          ),
          const SizedBox(width: 24)
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Choose another',
                  style: TextStyle(color: Color.fromARGB(36, 36, 36, 1))),
              // input
              Padding(
                padding: const EdgeInsets.only(top: 24, bottom: 28, right: 24),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter name or category",
                    hintStyle: TextStyle(color: Colors.grey.shade600),
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.grey.shade600,
                      size: 20,
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    contentPadding: const EdgeInsets.all(8),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(color: Colors.grey.shade100)),
                  ),
                ),
              ),
              //Category
              const Text('Category',
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w500,
                  )),
              const SizedBox(
                height: 16,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (int i = 0; i < categories.length; i++)
                      Container(
                        width: 164,
                        height: 52,
                        padding: const EdgeInsets.all(8.0),
                        margin: const EdgeInsets.only(left: 12),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: const Color.fromARGB(248, 236, 236, 230)),
                        child: Row(
                          children: <Widget>[
                            Image.asset(categories[i].icon),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(categories[i].title)
                          ],
                        ),
                      ),
                  ],
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              const Text('Popular',
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w500,
                  )),
              const SizedBox(
                height: 16,
              ),

              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      for (int i = 0; i < 5; i++) TourItem(),
                    ],
                  ))
            ],
          )),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: const Color.fromRGBO(235, 87, 87, 1),
              child: IconButton(
                icon: const Icon(
                  Icons.menu,
                ),
                onPressed: () {},
              ),
            ),
            IconButton(
              icon: const Icon(
                Icons.favorite_outline,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.chat_bubble_outline,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.settings_outlined,
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}

List<Category> categories = <Category>[
  Category('assets/images/top30.png', 'Top 30 places'),
  Category('assets/images/nature.png', 'Nature'),
  Category('assets/images/food.png', 'Dinner'),
];

class Category {
  String title;
  String icon;
  Category(this.icon, this.title);
}

class TourItem extends StatelessWidget {
  const TourItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: const EdgeInsets.only(left: 12),
        child: Stack(children: [
          Image.asset('assets/images/Salavat_Yulaev.png'),
          Positioned(
              right: 16,
              top: 16,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.favorite,
                  color: Colors.red.shade800,
                ),
              )),

          //content

          Positioned(
              left: 16,
              bottom: 16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 115,
                    margin: const EdgeInsets.only(bottom: 8),
                    child: const Text(
                      'Monument to Salavat Yulaev',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromRGBO(255, 255, 255, 0.3),
                      ),
                      child: const Row(children: [
                        Icon(
                          Icons.star,
                          color: Color(0xffFFD875),
                        ),
                        Text(
                          '4,0',
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                        )
                      ]))
                ],
              ))
        ]),
      ),
      onTap: () {
        print(MediaQuery.of(context).size.height);
        AutoRouter.of(context).pushNamed('/tour-detail');
      },
    );
  }
}
