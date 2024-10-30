import 'package:flutter/material.dart';

class infoTurnaround extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InfoTurnaroundState();
}

class InfoTurnaroundState extends State<infoTurnaround> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.cyanAccent,
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    '24h turnaround',
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'No need to plan in advance. Choose a collection and delivery time at your convenience and get clean laundry delivered to your doorstep.',
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Image.asset('assets/images/delivery.jpg'),
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 100, vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          "Next",
                          style: TextStyle(
                            color: Colors.deepPurpleAccent,
                            fontSize: 24,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Back',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
            Positioned(
              bottom: 300,
              right: 10,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
                ),
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const SizedBox(width: 10),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                            color: Colors.amberAccent,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.access_time_filled_outlined,
                            color: Colors.black,
                            size: 24,
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          'Get your laundry back in 24h',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                    const SizedBox(height: 5,),
                    Row(
                      children: [
                        const SizedBox(width: 10),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                            color: Colors.amberAccent,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.delivery_dining,
                            color: Colors.black,
                            size: 24,
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          'Free collection and delivery',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                    const SizedBox(height: 5,),
                    Row(
                      children: [
                        const SizedBox(width: 10),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                            color: Colors.amberAccent,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.door_front_door,
                            color: Colors.black,
                            size: 24,
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          'Door-to-door delivery',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
