import 'package:flutter/material.dart';
import 'package:laundry_service/ExplorePrices.dart';

class SelectLocation extends StatefulWidget {
  @override
  SelectLocationState createState() => SelectLocationState();
}

class SelectLocationState extends State<SelectLocation> {
  final Map<String, List<String>> countryCityData = {
    'UAE': ['Dubai', 'Abu Dhabi', 'Sharjah', 'Ajman', 'Umm Al-Quwain', 'Fujairah'],
  };

  final String selectedCountry = 'UAE'; // Permanently set country to UAE
  String? selectedCity;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    // Scale font sizes based on screen width
    double titleFontSize = screenWidth * 0.08;
    double labelFontSize = screenWidth * 0.05;
    double dropdownFontSize = screenWidth * 0.05;

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05), // Responsive horizontal padding
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Select your location.',
                  style: TextStyle(
                      fontSize: titleFontSize,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                Text(
                  'Country',
                  style: TextStyle(fontSize: labelFontSize),
                ),
                Container(
                  width: screenWidth,
                  padding: EdgeInsets.all(screenWidth * 0.03), // Responsive padding
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    selectedCountry,
                    style: TextStyle(
                      fontSize: dropdownFontSize,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                Text(
                  'Select City',
                  style: TextStyle(fontSize: labelFontSize),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: DropdownButton<String>(
                    value: selectedCity,
                    isExpanded: true,
                    underline: const SizedBox(),
                    hint: Padding(
                      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
                      child: Text(
                        'Choose a city',
                        style: TextStyle(fontSize: dropdownFontSize),
                      ),
                    ),
                    items: countryCityData[selectedCountry]!.map((city) {
                      return DropdownMenuItem<String>(
                        value: city,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
                          child: Text(
                            city,
                            style: TextStyle(
                                fontSize: dropdownFontSize,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (newCity) {
                      setState(() {
                        selectedCity = newCity;
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.05),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ExplorePrices())
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.3, vertical: screenHeight * 0.02), // Responsive padding
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    "CONTINUE",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: labelFontSize,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already a User? ',
                      style: TextStyle(
                        fontSize: labelFontSize * 0.9,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Log in',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: labelFontSize * 0.9,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
