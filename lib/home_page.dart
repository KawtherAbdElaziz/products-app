import 'package:flutter/material.dart';
import 'package:route_task/app_search.dart';
import 'service.dart';
import 'model.dart';
import 'category_info.dart';
import 'stack_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  late Future<List<Product>> futureProducts;

  @override
  void initState() {
    super.initState();
    futureProducts = ApiService().fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
                "Route",
                style: TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 40,
                    fontWeight: FontWeight.w100,
                    fontFamily: "Niconne"),
              ),
      ),
      body: Column(
        children: [
          // Add the AppSearch widget here
          const AppSearch(),

          // Spacer between search bar and product grid
          const SizedBox(height:15),

          Expanded(
            child: FutureBuilder<List<Product>>(
              future: futureProducts,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return const Center(child: Text('No products found'));
                } else {
                  return GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Number of columns
                      childAspectRatio: 0.75, // Adjust the aspect ratio to fit your cards
                      crossAxisSpacing: 6,
                      mainAxisSpacing: 6,
                    ),
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      final product = snapshot.data![index];
                      return Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            side: const BorderSide(
                                    color: Color.fromARGB(255, 16, 154, 218),
                                    width: 1)),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              StackCard(path: product.thumbnail),
                              CategoryInfo(
                                title: product.title,
                                text: product.description,
                                price: '\$${product.price}',
                                discount: '${product.discountPercentage}% off',
                                review: '${product.rating}',
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
