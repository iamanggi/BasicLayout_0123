import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeatherHomeScreen(),
    );
  }
}

class WeatherHomeScreen extends StatelessWidget {
  const WeatherHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Weather App',
          style: GoogleFonts.poppins(),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(icon: const Icon(Icons.menu_rounded), onPressed: () {}),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.add_box_rounded)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Yogyakarta',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              'Today',
              style: TextStyle(fontSize: 18, color: Colors.grey, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              '28°C',
              style: TextStyle(fontSize: 100, fontWeight: FontWeight.w400, color: Colors.blueAccent),
            ),
            const SizedBox(height: 8),
            const SizedBox(
              width: 350,
              child: Divider(thickness: 1.3, color: Colors.grey),
            ),
            const SizedBox(height: 8),
            Text(
              'Sunny',
              style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.grey),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.wb_sunny_rounded, color: Color.fromARGB(255, 248, 202, 62)),
                const SizedBox(width: 5),
                Text(
                  '5 km/h',
                  style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold, color: const Color.fromRGBO(27, 27, 53, 0.555)),
                ),
              ],
            ),
            const SizedBox(height: 16),
            DecoratedBox(
              decoration: BoxDecoration(
                color: const Color.fromARGB(172, 229, 229, 229),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Next 7 days',
                      style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: ['Now', '17.00', '20.00', '23.00']
                          .map((waktu) => ColumnCuaca(waktu: waktu))
                          .toList(),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            Text(
              'Developed by: Anggi Puspita',
              style: GoogleFonts.poppins(fontSize: 16, color: const Color.fromARGB(173, 39, 36, 36), fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}

class ColumnCuaca extends StatelessWidget {
  final String waktu;
  const ColumnCuaca({required this.waktu});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          waktu,
          style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w400),
        ),
        const SizedBox(height: 8),
        const Icon(Icons.wb_sunny_rounded, color: Color.fromARGB(255, 248, 202, 62)),
        const SizedBox(height: 8),
        Text(
          '28°C',
          style: GoogleFonts.poppins(fontSize: 16, color: const Color.fromARGB(255, 32, 139, 226)),
        ),
        const SizedBox(height: 8),
        Column(
          children: [
            const Icon(Icons.wind_power_rounded, color: Color.fromARGB(255, 199, 63, 106)),
            const SizedBox(width: 5),
            Text(
              '10 km/h',
              style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w400, color: const Color.fromARGB(255, 199, 63, 106)),
            ),
          ],
        ),
        const SizedBox(height: 8),
        const Icon(Icons.umbrella_rounded),
        const SizedBox(height: 8),
        Text(
          '0 %',
          style: GoogleFonts.poppins(fontSize: 16, color: Colors.black),
        ),
      ],
    );
  }
}