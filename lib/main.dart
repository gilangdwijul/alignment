  import 'package:flutter/material.dart';

  void main() {
    runApp(const MyApp());
  }

  class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
      return const MaterialApp(
        debugShowCheckedModeBanner: true,
        home: WeatherScreen(),
      );
    }
  }

  class WeatherScreen extends StatelessWidget {
    const WeatherScreen({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: const Color(0xFFFAF5FA), // Warna background pastel tipis
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Bagian Nama Kota
                const Text(
                  'Malang',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.normal,
                    color: Colors.black87,
                  ),
                ),

                // Bagian Suhu Utama
                const Text(
                  '25°',
                  style: TextStyle(
                    fontSize: 80,
                    fontWeight: FontWeight.w300,
                    color: Colors.black87,
                  ),
                ),

                // Bagian Perkiraan Cuaca Harian (Minggu, Senin, Selasa)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    // Minggu
                    WeatherItem(
                      day: 'Minggu',
                      icon: Icons
                          .wb_sunny_outlined, // Atau Icons.wb_sunny / Icons.sunny
                      temperature: '20°C',
                    ),
                    // Senin
                    WeatherItem(
                      day: 'Senin',
                      icon: Icons.cloudy_snowing,
                      temperature: '23°C',
                    ),
                    // Selasa
                    WeatherItem(
                      day: 'Selasa',
                      icon: Icons.cloud,
                      temperature: '22°C',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    }
  }

  // Widget reusable untuk tiap item perkiraan cuaca
  class WeatherItem extends StatelessWidget {
    final String day;
    final IconData icon;
    final String temperature;

    const WeatherItem({
      super.key,
      required this.day,
      required this.icon,
      required this.temperature,
    });

    @override
    Widget build(BuildContext context) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(day, style: const TextStyle(fontSize: 14, color: Color.fromARGB(221, 157, 255, 0))),
          const SizedBox(height: 12),
          Icon(icon, size: 32, color: Colors.black),
          const SizedBox(height: 12),
          Text(
            temperature,
            style: const TextStyle(fontSize: 14, color: Color.fromARGB(221, 246, 10, 10))),
        ],
      );
    }
  }
