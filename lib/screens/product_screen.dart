import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Stack(
            children: [
              Container(
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: const DecorationImage(image: AssetImage('assets/cricket_deal_2.jpg'),
                  fit: BoxFit.cover,
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 30),
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.close,
                      color: Color(0xFFDE1C6E),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Cricket Deal 2",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
              ),
              Column(
                children: [
                  Text(
                      "Rs. 869.00",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  Text(
                    "Rs. 549.00",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 5,),
          const Text(
            "6 inches sub & 345 ml drink",
            style: TextStyle(
              fontSize: 14,
              color: Colors.black54,
            ),
          ),
          const Divider(height: 40,color: Colors.black12,),
          const SizedBox(height: 10,),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFFDE1C6E).withOpacity(0.07),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.black26,
              )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Choose you Bread",
                    style: TextStyle(
                        fontSize: 18,
                    fontWeight: FontWeight.bold,
                    ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 8),
                      decoration: BoxDecoration(
                        color: const Color(0xFFDE1C6E),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Text(
                        "Required",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8,),
                const Text(
                  "Select One",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFDE1C6E),
                  ),
                ),
                const SizedBox(height: 8,),
                RadioListTile(
                    value: "Italian",
                    groupValue: "bread",
                    title: const Text("Italian"),
                    secondary: const Text(
                      "Free",
                    style: TextStyle(
                      fontSize: 15,
                    ),),
                    activeColor: const Color(0xFFDE1C6E),
                    onChanged: (value){}
                ),
                RadioListTile(
                    value: "Whear",
                    groupValue: "bread",
                    title: const Text("Whear"),
                    secondary: const Text(
                      "Free",
                      style: TextStyle(
                        fontSize: 15,
                      ),),
                    activeColor: const Color(0xFFDE1C6E),
                    onChanged: (value){}
                ),
                RadioListTile(
                    value: "Sesame",
                    groupValue: "bread",
                    title: const Text("Sesame"),
                    secondary: const Text(
                      "Free",
                      style: TextStyle(
                        fontSize: 15,
                      ),),
                    activeColor: const Color(0xFFDE1C6E),
                    onChanged: (value){}
                ),
                RadioListTile(
                    value: "Honey Oat",
                    groupValue: "bread",
                    title: const Text("Honey Oat"),
                    secondary: const Text(
                      "Free",
                      style: TextStyle(
                        fontSize: 15,
                      ),),
                    activeColor: const Color(0xFFDE1C6E),
                    onChanged: (value){}
                ),
              ],
            ),
          ),
          const SizedBox(height: 30,),
          const Text(
            "Special instructions",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5,),
          const Text(
            "Please let us know if you are allergic to anything or if we need to avoid anything",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black54,
            ),
          ),
          const SizedBox(height: 5,),
          TextField(
            maxLines: 4,
            decoration:InputDecoration(
              hintText: "e.g. no mayo",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              contentPadding: const EdgeInsets.all(12),
            ) ,
          ),
          const Align(alignment: Alignment.centerRight,
          child: Padding(
              padding:EdgeInsets.only(right: 10),
          child:Text(
              "0/500",
          style: TextStyle(
            color: Colors.black,
          ),
          ),
          ),
          ),
          const SizedBox(height: 30,),
          const Text(
            "If this product is not available",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15,),
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey.shade300)
              ),
            child: const ListTile(
              title: Text("Remove it from my order"),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Color(0xFFDE1C6E),
              ),
            ),
          ),
          const SizedBox(height: 30,),
        ],
      ),
      bottomNavigationBar: Container(
        height: 90,
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 1,
              blurRadius: 2,
            ),
          ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.remove,
                  color: Colors.white,
                  size: 30,),
                ),
                const SizedBox(width: 20,),
                const Text(
                    "1",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),),
                const SizedBox(width:20,),
                Row(
                  children: [
                    Container(
                      height: 35,
                      width: 35,
                      decoration: const BoxDecoration(
                        color: Color(0xFFDE1C6E),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 30,
                      ),
                    )
                  ],
                ),
                const SizedBox(width: 50,),
                InkWell(
                  onTap: (){},
                  child: Container(
                    width: MediaQuery.of(context).size.width/2,
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    decoration: BoxDecoration(
                      color: const Color(0xFFDE1C6E),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Center(
                      child: Text("Add to cart",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
