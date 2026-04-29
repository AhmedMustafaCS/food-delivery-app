import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  Widget orderVoucherItem(BuildContext context, {required String name, required int number}) {
    return Column(
      children: [
        Text(
          number.toString(),
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                color: Theme.of(context).primaryColor,
              ),
        ),
        Text(
          name,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }

  Widget itemTappedTile(BuildContext context, {required String title, String? subtitle, required IconData icon}) {
    final size = MediaQuery.sizeOf(context);
    final isLandscape = MediaQuery.orientationOf(context) == Orientation.landscape;
    return Platform.isAndroid
        ? ListTile(
            title: Text(title),
            leading: Icon(
              icon,
              size: isLandscape ? size.height * 0.09 : size.height * 0.033,
            ),
            onTap: () => debugPrint('$title clicked!'),
            subtitle: subtitle != null ? Text(subtitle) : null,
            trailing: Icon(
              Icons.chevron_right,
              size: isLandscape ? size.height * 0.09 : size.height * 0.03,
            ),
          )
        : CupertinoListTile(
            padding: EdgeInsets.only(top: size.height * 0.02, bottom: size.height * 0.02, left: size.width * 0.04, right: size.width * 0.04),
            title: Text(title),
            leading: Icon(
              color: Theme.of(context).primaryColor,
              icon,
              size: isLandscape ? size.height * 0.09 : size.height * 0.033,
            ),
            onTap: () => debugPrint('$title clicked!'),
            subtitle: subtitle != null ? Text(subtitle) : null,
            trailing: Icon(
              color: Theme.of(context).primaryColor,
              CupertinoIcons.chevron_right,
              size: isLandscape ? size.height * 0.09 : size.height * 0.03,
            ),
          );
  }

  Widget personPhoto(double width, double height) => Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage(
              'assets/images/ahmed.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final isLandscape = MediaQuery.orientationOf(context) == Orientation.landscape;
    final nameText = Text(
      'Ahmed Mustafa',
      style: Theme.of(context).textTheme.headlineMedium!.copyWith(
            fontWeight: FontWeight.w600,
          ),
    );
    return Platform.isAndroid
        ? SingleChildScrollView(
            child: Column(
              children: [
                if (!isLandscape) ...[
                  personPhoto(size.width * 0.5, size.height * 0.25),
                  nameText,
                  const SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      orderVoucherItem(context, name: 'Orders', number: 50),
                      orderVoucherItem(context, name: 'Vouchers', number: 10),
                    ],
                  ),
                  const SizedBox(height: 24.0),
                ],
                if (isLandscape) ...[
                  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                    Column(
                      children: [
                        personPhoto(size.width * 0.2, size.height * 0.45),
                        const SizedBox(height: 8.0),
                        nameText,
                      ],
                    ),
                    Column(children: [
                      orderVoucherItem(context, name: 'Orders', number: 50),
                      const SizedBox(height: 16.0),
                      orderVoucherItem(context, name: 'Vouchers', number: 10),
                    ]),
                  ]),
                ],
                const Divider(),
                itemTappedTile(
                  context,
                  title: 'Past Orders',
                  icon: Icons.shopping_cart,
                ),
                const Divider(),
                itemTappedTile(
                  context,
                  title: 'Available Vouchers',
                  icon: Icons.card_giftcard,
                ),
                const Divider(),
              ],
            ),
          )
        : SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 18.0),
                if (!isLandscape)
                  Column(
                    children: [
                      personPhoto(size.width * 0.5, size.height * 0.25),
                      nameText,
                      const SizedBox(height: 16.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          orderVoucherItem(context, name: 'Orders', number: 50),
                          orderVoucherItem(context, name: 'Vouchers', number: 10),
                        ],
                      ),
                      const SizedBox(height: 24.0),
                    ],
                  ),
                if (isLandscape) ...[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          personPhoto(size.width * 0.2, size.height * 0.45),
                          const SizedBox(height: 8.0),
                          nameText,
                        ],
                      ),
                      Column(children: [
                        orderVoucherItem(context, name: 'Orders', number: 50),
                        const SizedBox(height: 16.0),
                        orderVoucherItem(context, name: 'Vouchers', number: 10),
                      ]),
                    ],
                  ),
                ],
                CupertinoListSection.insetGrouped(
                  children: [
                    itemTappedTile(
                      context,
                      title: 'Past Orders',
                      icon: Platform.isAndroid ? Icons.shopping_cart : CupertinoIcons.shopping_cart,
                    ),
                    itemTappedTile(
                      context,
                      title: 'Available Vouchers',
                      icon: Platform.isAndroid ? Icons.card_giftcard : CupertinoIcons.gift,
                    ),
                  ],
                )
              ],
            ),
          );
  }
}
