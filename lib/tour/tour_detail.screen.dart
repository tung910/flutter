import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class TourDetailScreen extends StatelessWidget {
  const TourDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          margin: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 28),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(34),
                      child: Image.asset(
                        'assets/images/Shulgaт-Tash.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    //back
                    Positioned(
                        left: 24,
                        top: 24,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                          ),
                          padding: const EdgeInsets.all(8),
                          child: const Icon(Icons.arrow_back_ios_new_rounded),
                        )),
                    //
                    Positioned(
                        left: 24,
                        bottom: 24,
                        child: Container(
                          width: 170,
                          padding: const EdgeInsets.symmetric(
                              vertical: 4, horizontal: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromRGBO(255, 255, 255, 0.2),
                          ),
                          child: Row(
                            children: [
                              Image.asset('assets/images/user.png'),
                              const SizedBox(
                                width: 8,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Azat Khabirov',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Opacity(
                                    opacity: 0.6,
                                    child: Text(
                                      'Location guide',
                                      style: TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )),
                    Positioned(
                        right: 24,
                        bottom: -24,
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.favorite,
                            color: Colors.red.shade800,
                          ),
                        ))
                  ],
                ),
              ),
              const Text(
                'Shulgaт-Tash cave ',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
              ),
              Container(
                margin: const EdgeInsets.only(top: 12, bottom: 8),
                width: 280,
                child: const Text(
                    'A truly amazing example of the creation of nature, the Kapova cave with cave paintings of ancient people with...',
                    style: TextStyle(
                      fontSize: 15,
                    )),
              ),
              Row(
                children: const [
                  Text(
                    'Read more',
                    style: TextStyle(color: Color(0xFFFF678B)),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Color(0xFFFF678B),
                  )
                ],
              ),
              const SizedBox(
                height: 23,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 12),
                    decoration: BoxDecoration(
                        color: const Color(0xFFF8F8F8),
                        borderRadius: BorderRadius.circular(16)),
                    //0xFFF8F8F8
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white),
                          child: const Icon(
                            Icons.wallet,
                            color: Color(0xff8DBCE8),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text('from 90 &')
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 12),
                    decoration: BoxDecoration(
                        color: const Color(0xFFF8F8F8),
                        borderRadius: BorderRadius.circular(16)),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white),
                          child: const Icon(
                            Icons.car_crash,
                            color: Color(0xffFFC187),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text('6 часа')
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 12),
                    decoration: BoxDecoration(
                        color: const Color(0xFFF8F8F8),
                        borderRadius: BorderRadius.circular(16)),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white),
                          child: const Icon(
                            Icons.dining_outlined,
                            color: Color(0xff81D4A3),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text('Full Board')
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 12),
                    decoration: BoxDecoration(
                        color: const Color(0xFFF8F8F8),
                        borderRadius: BorderRadius.circular(16)),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white),
                          child: const Icon(
                            Icons.enhanced_encryption_rounded,
                            color: Color(0xffA8BAC5),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text('Insurance ')
                      ],
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }
}
