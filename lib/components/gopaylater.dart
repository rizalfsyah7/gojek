import 'package:flutter/material.dart';
import 'package:gojek/theme.dart';

class Gopaylater extends StatelessWidget {
  const Gopaylater({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              height: 15, child: Image.asset('assets/images/gopaylater.png')),
          const SizedBox(
            height: 8,
          ),
          Text(
            'Lebih hemat pake GoPayLater',
            style: bold16.copyWith(color: dark1),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            'Yuk belanja di Tokopedia pake gopaylater dan nikmatin cashbacknya',
            style: regular14.copyWith(color: dark2),
          )
        ],
      ),
    );
  }
}
