import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/popular_tab.dart';
class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> with SingleTickerProviderStateMixin{
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this , initialIndex: 0);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  _handleTabSelection(){
    if(_tabController.indexIsChanging){
      setState(() {

      });
    }
  }
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  final List<String> categories =[
    "Popular",
    "Cricket Deals",
    "Strong Pepsi Deals",
    "All New",
  ];

  final List<Map<String,String>> popularItems =[
    {
      "title":"Cricket Deal 2",
      "price":"Rs. 549.00",
      "oldPrice":"Rs. 869.00",
      "image":"assets/cricket_deal_2.jpg",
    },
    {
      "title":"Chicken Fajita",
      "price":" from Rs. 785.00",
      "image":"assets/chicken_fajita.jpg",
    },
    {
      "title":"Chicken Tikka",
      "price":"from Rs. 869.00",
      "image":"assets/chicken_tikka.jpg",
    },
    {
      "title":"Chicken Teriyaki",
      "price":"from Rs. 840.00",
      "oldPrice":"Rs. 990.00",
      "image":"assets/chicken_teriyaki.jpg",
    },
    {
      "title":"Roasted Chicken Breast",
      "price":"from Rs. 710.00",
      "image":"assets/roasted_chicken_breast.jpg",
    },
    {
      "title":"Chicken Tikka Salad",
      "price":"from Rs. 845.00",
      "image":"assets/chicken_tikka_salad.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length:categories.length,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(onPressed: (){
              Navigator.pop(context);
            },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Color(0xFFDE1C6E),
                ),
            ),
            title: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Delivery",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                ),
                Text("25-35min",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFFDE1C6E),
                  ),
                ),
              ],
            ),
            actions: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_border,
              color:Color(0xFFDE1C6E),
              ),
              ),
              IconButton(onPressed: (){}, icon: const Icon(Icons.share_outlined,
                color:Color(0xFFDE1C6E),
              ),
              ),
              IconButton(onPressed: (){}, icon: const Icon(Icons.search,
                color:Color(0xFFDE1C6E),
              ),
              ),
            ],
          ),
          body: ListView(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/subway_logo.jpg",height: 70,),
                        const SizedBox(width: 8,),
                        const Text("Subway",style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),)
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        const Expanded(
                            child: Text(
                                "1.5km away | Rs. 99.00 Delivery | RS. 249.00 Minimum Service"
                                    "fee applies",
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 13,
                              ),
                            ),
                        ),
                        TextButton(onPressed: (){},
                            child: const Text("More info",style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFDE1C6E),
                            ),
                            ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        const Icon(Icons.star_outline,color: Color(0xFFDE1C6E),size: 30,),
                        const SizedBox(width: 5,),
                        const Text(
                            "3.9",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        const SizedBox(width: 8,),
                        const Text("1000+ rating",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 13,
                        ),
                        ),
                        const Spacer(),
                        TextButton(onPressed: (){},
                          child: const Text("See reviews",style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFDE1C6E),
                          ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(CupertinoIcons.clock,color: Color(0xFFDE1C6E),size: 25,),
                        const SizedBox(width: 5,),
                        const Text(
                          "Delivery: 25-35 min",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        TextButton(onPressed: (){},
                          child: const Text("Change",style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.black26,
                          ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8,),
                    Row(
                      children: [
                        Image.asset(
                          "assets/voucher_panda.png",
                          height: 25,
                          width: 25,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 10,),
                        const Text("Available deals",style:TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),
                    const SizedBox(height: 8,),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: const Color(0xFFDF1C6E).withOpacity(0.07),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/percentage_icon.png",
                              height: 20,
                              width: 20,
                              fit: BoxFit.cover,),
                              const SizedBox(width: 5,),
                              const Text(
                                "Rs. 320 off",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:  Color(0xFFDF1C6E)
                              ),)
                            ],
                          ),
                          const SizedBox(height: 8,),
                          const Text(
                            "Min. order Rs. 320. Valid for selected item.\nAuto-applied",
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 16,),
                    TabBar(
                      tabAlignment: TabAlignment.start,
                        controller: _tabController,
                        isScrollable: true,
                        indicatorSize: TabBarIndicatorSize.tab,
                        unselectedLabelColor: Colors.black,
                        labelStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        labelColor: const Color(0xFFDF1C6E),
                        indicatorColor: const Color(0xFFDF1C6E),
                        indicatorWeight: 3,
                        indicatorPadding: const EdgeInsets.symmetric(horizontal: 20),
                        tabs:[
                          const Tab(text: "Popular",),
                          const Tab(text: "Cricket Deals",),
                          const Tab(text: "Strong Pepsi Deals",),
                          const Tab(text: "All New",),
                        ],
                    ),
                    Center(
                      child: IndexedStack(
                        index: _tabController.index,
                        children: [
                          PopularTab(popularItems: popularItems,),
                          const Center(
                            child: Text("Cricket Deals Tab"),
                          ),
                          const Center(
                            child: Text("Strong Pepsi Deals Tab"),
                          ),
                          const Center(
                            child: Text("All New Tab"),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}
