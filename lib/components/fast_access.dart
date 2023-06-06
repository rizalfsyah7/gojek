import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gojek/theme.dart';

class FastAccess extends StatelessWidget {
  const FastAccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 16, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Akses Cepat',
            style: bold18.copyWith(color: dark1),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: const Color(0xffe8e8e8))),
            child: Column(
              children: [
                ...[
                  'Pintu masuk motor, MNC Land',
                  'Pintu keluar motor, MNC Land'
                ].map((text) => Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: green2),
                            child: SvgPicture.asset('assets/icons/goride.svg'),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            child: Text(text,
                                style: regular14.copyWith(color: dark1)),
                          ),
                          SvgPicture.asset(
                            'assets/icons/left.svg',
                            // ignore: deprecated_member_use
                            color: dark1,
                          )
                        ],
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
