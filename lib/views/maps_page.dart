import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart'; // Jangan lupa import ini
import 'package:from_css_color/from_css_color.dart';
import 'package:latlong2/latlong.dart';
import 'package:tracking_app/widgets/app_bar.dart';
import 'package:tracking_app/widgets/input.dart';

class MapsPage extends StatelessWidget {
  const MapsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(
        title: "Maps",
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu_book))],
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: const MapOptions(
              initialCenter: LatLng(-6.2000, 106.8166),
              initialZoom: 13.0,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.tracking.app',
              ),
            ],
          ),

          Positioned(
            bottom: 100,
            right: 20,
            child: FloatingActionButton(
              onPressed: () => _showMyBottomSheet(context),
              backgroundColor: fromCssColor("#5061FF"),
              child: const Icon(Icons.info_outline, color: Colors.white),
            ),
          ),
        ],
      ),
      bottomSheet: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
          borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: const Center(
          child: Text("Swipe up or click button to see details"),
        ),
      ),
    );
  }

  void _showMyBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
      ),
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(20),
          height: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 50,
                  height: 5,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 20),
              InputCustom(
                text: "Search Object",
                suffix: Icon(Icons.search, color: fromCssColor("#5061FF")),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Icon(Icons.cookie_outlined, size: 30),
                      ),
                      Text("Cookie"),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Icon(Icons.cookie_outlined, size: 30),
                      ),
                      Text("Cookie"),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Icon(Icons.cookie_outlined, size: 30),
                      ),
                      Text("Cookie"),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Icon(Icons.cookie_outlined, size: 30),
                      ),
                      Text("Cookie"),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [Text("Jakarta Street"), Text("Naufal's Shop")],
                    ),
                    Icon(Icons.coffee_maker),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
