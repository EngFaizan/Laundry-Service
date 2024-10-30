import 'package:flutter/material.dart';

class SelectLocation extends StatefulWidget {
  @override
  SelectLocationState createState() => SelectLocationState();
}

class SelectLocationState extends State<SelectLocation> {
  final Map<String, List<String>> countryCityData = {
    'USA': ['New York', 'Los Angeles', 'Chicago'],
    'India': ['Mumbai', 'Delhi', 'Bangalore'],
    'Canada': ['Toronto', 'Vancouver', 'Montreal'],
    'Australia': ['Sydney', 'Melbourne', 'Brisbane'],
  };

  String? selectedCountry; // Initialize as null and update based on selection
  String? selectedCity; // Initialize as null

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Select location to see prices.',
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Select Country',
                    style: TextStyle(fontSize: 18),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey, // Choose the outline color you want
                        width: 2.0,         // Outline thickness
                      ),
                      borderRadius: BorderRadius.circular(8), // Optional: Rounded corners
                    ),
                    child: DropdownButton<String>(
                      value: selectedCountry,
                      isExpanded: true,
                      underline: const SizedBox(), // Remove default underline
                      hint: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text('Choose a country'),
                      ),
                      items: countryCityData.keys.map((country) {
                        return DropdownMenuItem<String>(
                          value: country,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(country,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                      onChanged: (newCountry) {
                        setState(() {
                          selectedCountry = newCountry;
                          selectedCity = null; // Reset city when country changes
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Select City',
                    style: TextStyle(fontSize: 18),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey, // Choose the outline color you want
                        width: 2.0,         // Outline thickness
                      ),
                      borderRadius: BorderRadius.circular(8), // Optional: Rounded corners
                    ),
                    child: DropdownButton<String>(
                      value: selectedCity,
                      isExpanded: true,
                      underline: const SizedBox(), // Remove default underline
                      hint: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text('Choose a city'),
                      ),
                      items: selectedCountry != null
                          ? countryCityData[selectedCountry!]!.map((city) {
                        return DropdownMenuItem<String>(
                          value: city,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(city,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        );
                      }).toList()
                          : [],
                      onChanged: (newCity) {
                        setState(() {
                          selectedCity = newCity;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 120, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    "CONTINUE",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already a User? ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Log in',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
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

