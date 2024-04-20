import 'package:chat/view/products/product_details.dart';
import 'package:chat/view/search/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OfficeSupplies extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  const OfficeSupplies({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Office Supplies Products'),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 131, 217, 226),
                Color.fromARGB(150, 164, 229, 207),
                Color.fromARGB(100, 233, 248, 243),
                // Color(0x0086d9e0),
                // Color(0x00a3e6cf),
              ],
            ),
          ),
          child: Column(
            children: [
              const SearchWidget(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 75 / 100,
                child: ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(products[index]['en']['title']),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(products[index]['en']['description']),
                          const SizedBox(height: 5),
                          Text(
                            'Price: ${products[index]['price']} \$', // Displaying the price
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      leading: Image.network(
                        products[index]['thumbnail'],
                        fit: BoxFit.fill,
                        width: MediaQuery.of(context).size.width * .25,
                        // height: MediaQuery.of(context).size.height * .9,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ProductDetailsScreen(product: products[index]),
                          ),
                        );
                        print(
                            'Selected product: ${products[index]['en']['title']}');
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
