// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gojek/theme.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 23, left: 15, right: 15),
      child: Row(
        children: [
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: const Color(0xFFFAFAFA),
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: const Color(0xFFE8E8E8))),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/search.svg',
                    // ignore: deprecated_member_use
                    color: dark1,
                    width: 20,
                    height: 20,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Cari Layanan, Makan, dan tujuan',
                    style: regular14.copyWith(color: dark3),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          SizedBox(
            width: 35,
            height: 35,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35 / 2)),
                  clipBehavior: Clip.hardEdge,
                  child: Image.asset('assets/images/avatar.png'),
                ),
                Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      height: 16,
                      width: 16,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35 / 2),
                          color: const Color(0xffd1e7ee)),
                      clipBehavior: Clip.hardEdge,
                      child: SvgPicture.asset(
                        'assets/icons/goclub.svg',
                        // ignore: deprecated_member_use
                        color: blue2,
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
