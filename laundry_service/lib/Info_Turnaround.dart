import 'package:flutter/material.dart';
import 'package:laundry_service/Info_RealTimeTracking.dart';

class InfoTurnaround extends StatefulWidget {
  const InfoTurnaround({super.key});

  @override
  State<StatefulWidget> createState() => InfoTurnaroundState();
}

class InfoTurnaroundState extends State<InfoTurnaround> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.lightBlueAccent,
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: screenHeight * 0.02),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                  child: Text(
                    '24h turnaround',
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: screenWidth * 0.15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                  child: Text(
                    'No need to plan in advance. Choose a collection and delivery time at your convenience and get clean laundry delivered to your doorstep.',
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: screenWidth * 0.07,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Image.asset(
                  'assets/images/delivery.jpg',
                  width: screenWidth * 0.9,
                  height: screenHeight * 0.4,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const InfoRealTimeTracking(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.4,
                            vertical: screenHeight * 0.02,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          "Next",
                          style: TextStyle(
                            color: Colors.deepPurpleAccent,
                            fontSize: screenWidth * 0.06,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Back',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: screenWidth * 0.06,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: screenHeight * 0.2,
              right: screenWidth * 0.02,
              child: Container(
                width: screenWidth * 0.85,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(screenWidth * 0.02),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildInfoRow(
                      icon: Icons.access_time_filled_outlined,
                      text: 'Get your laundry back in 24h',
                      screenWidth: screenWidth,
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    _buildInfoRow(
                      icon: Icons.delivery_dining,
                      text: 'Free collection and delivery',
                      screenWidth: screenWidth,
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    _buildInfoRow(
                      icon: Icons.door_front_door,
                      text: 'Door-to-door delivery',
                      screenWidth: screenWidth,
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

  Widget _buildInfoRow({required IconData icon, required String text, required double screenWidth}) {
    return Row(
      children: [
        Container(
          width: screenWidth * 0.1,
          height: screenWidth * 0.1,
          decoration: const BoxDecoration(
            color: Colors.amberAccent,
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: Colors.black,
            size: screenWidth * 0.05,
          ),
        ),
        SizedBox(width: screenWidth * 0.03),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: screenWidth * 0.045,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
