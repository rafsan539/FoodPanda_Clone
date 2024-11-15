import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodpanda/screens/developer_screen.dart';

class MyDrawer extends StatelessWidget {
  ListTile buildListTile(
      BuildContext context, String text, IconData? icon, VoidCallback onTap) {
    return icon == null
        ? ListTile(
      onTap: onTap,
      title: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 14,
        ),
      ),
    )
        : ListTile(
      onTap: onTap,
      leading: Icon(
        icon,
        color: const Color(0xFFFF2B85),
      ),
      title: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 14,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.zero,
        children: [
          Builder(
            builder: (context) {
              return DrawerHeader(
                decoration: BoxDecoration(
                  color: const Color(0xFFFF2B85),
                  border: Border.all(
                    color: const Color(0xFFFF2B85),
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: const Center(
                        child: Text("R",style: TextStyle(
                          color: Color(0xFFFF2B85),
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                        ),),
                      ),
                    ),
                    const Text(
                        "Rafsan Zani",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),),
                  ],
                ),
              );
            },
          ),
          Column(
            children: [
              buildListTile(
                context,
                "Vouchers & Offers",
                Icons.local_offer_outlined,
                  (){},
              ),
              buildListTile(
                  context,
                  "Favourites",
                  Icons.favorite_outline_rounded,
                  (){},
              ),
              buildListTile(
                context,
                "Orders & reordering",
                Icons.my_library_books_outlined,
                    (){},
              ),
              buildListTile(
                context,
                "Addresses",
                Icons.location_on_outlined,
                    (){},
              ),
              buildListTile(
                context,
                "Payment methods",
                Icons.payment_rounded,
                    (){},
              ),
              buildListTile(
                context,
                "Help Center",
                Icons.help_center_outlined,
                    (){},
              ),
              buildListTile(
                context,
                "Invite friends",
                Icons.wallet_giftcard_outlined,
                    (){},
              ),
              const Divider(),
              buildListTile(context, "Settings", null, (){},),
              buildListTile(context, "Terms & Conditions / Privacy", null, (){},),
              buildListTile(context, "Logout", null, (){},),
              buildListTile(
                  context,
                  "Developer",
                  null,
                      (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>DeveloperScreen()));
                      })
            ],
          ),
        ],
      ),
    );
  }
}
