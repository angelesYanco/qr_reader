import 'package:flutter/material.dart';
import 'package:qr_reader/pages/direcciones_page.dart';
import 'package:qr_reader/pages/mapas_page.dart';
import 'package:qr_reader/widgets/custom_navigatorbar.dart';
import 'package:qr_reader/widgets/scan_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Historial',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.delete_forever))
          ],
        ),
        body: _HomePageBody(),
        bottomNavigationBar: const CustomNavigationBar(),
        floatingActionButton: const ScanButton(),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.centerDocked);
  }
}

class _HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const currentIndex = 0;

    switch (currentIndex) {
      case 0:
        return const MapasPage();
      case 1:
        return const DireccionesPage();
      default:
        return const MapasPage();
    }
  }
}
