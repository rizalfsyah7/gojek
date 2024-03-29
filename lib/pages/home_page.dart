import 'package:flutter/material.dart';
import 'package:gojek/components/fast_access.dart';
import 'package:gojek/components/goclub.dart';
import 'package:gojek/components/gopay.dart';
import 'package:gojek/components/gopaylater.dart';
import 'package:gojek/components/menu_icons.dart';
import 'package:gojek/components/news.dart';
import 'package:gojek/theme.dart';

import '../components/search.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: green2,
          elevation: 0,
          toolbarHeight: 71,
          title: const Header()),
      body: const SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          //search
          Search(),
          //gopay
          Gopay(),
          //menu
          Menu_Icon(),
          //goclub
          Goclub(),
          // Fast Access
          FastAccess(),
          // Gopaylater
          Gopaylater(),
          // news
          News()
        ]),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration:
          BoxDecoration(color: green1, borderRadius: BorderRadius.circular(30)),
      child: Row(children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(100)),
          child: Text(
            'Beranda',
            style: semibold14.copyWith(color: green1),
          ),
        ),
        ...['Promo', 'Pesanan', 'Chat'].map((tittle) => Flexible(
              fit: FlexFit.loose,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                child: Center(child: Text(tittle, style: semibold14)),
              ),
            ))
      ]),
    );
  }
}
