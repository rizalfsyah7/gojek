import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gojek/datas/icons.dart';
import 'package:gojek/theme.dart';

// ignore: camel_case_types
class Menu_Icon extends StatelessWidget {
  const Menu_Icon({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 27, right: 27, top: 32),
      child: SizedBox(
        height: 157,
        child: GridView.count(
          crossAxisCount: 4,
          children: [
            ...menuIcons.map((icon) => Column(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color:
                              icon.icon == 'goclub' ? Colors.white : icon.color,
                          borderRadius: BorderRadius.circular(20)),
                      child: SvgPicture.asset(
                        'assets/icons/${icon.icon}.svg',
                        // ignore: deprecated_member_use
                        color: icon.icon == 'goclub'
                            ? icon.color
                            : icon.icon == 'other'
                                ? dark2
                                : Colors.white,
                        width: 24,
                        height: 24,
                      ),
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    Text(
                      icon.title,
                      style: regular12_5.copyWith(color: dark2),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
