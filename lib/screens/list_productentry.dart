import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:shop_to_impress/models/product_entry.dart';
import 'package:shop_to_impress/widgets/left_drawer.dart';

class ProductEntryPage extends StatefulWidget {
  const ProductEntryPage({super.key});

  @override
  State<ProductEntryPage> createState() => _ProductEntryPageState();
}

class _ProductEntryPageState extends State<ProductEntryPage> {
  Future<List<ProductEntry>> fetchProducts(CookieRequest request) async {
    try {
      // Gunakan URL yang sesuai (http://10.0.2.2:8000/json/ untuk emulator Android)
      final response = await request.get('http://127.0.0.1:8000/json/');

      // Validasi respons
      if (response == null || response.isEmpty) {
        throw Exception('No data available or failed to fetch data');
      }

      List<ProductEntry> productList = [];
      for (var d in response) {
        productList.add(ProductEntry.fromJson(d));
      }
      return productList;
    } catch (e) {
      // Tangani error
      print("Error: $e");
      return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
      ),
      drawer: const LeftDrawer(),
      body: FutureBuilder(
        future: fetchProducts(request),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(
              child: Text(
                'Error: ${snapshot.error}',
                style: const TextStyle(color: Colors.red),
              ),
            );
          } else if (!snapshot.hasData || snapshot.data.isEmpty) {
            return const Center(
              child: Text('No products available.'),
            );
          } else {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (_, index) {
                final product = snapshot.data[index];
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4.0,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Product: ${product.fields.product}",
                        style: const TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text("Amount: Rp${product.fields.price}"),
                      const SizedBox(height: 10),
                      Text("Description: ${product.fields.description}"),
                      const SizedBox(height: 10),
                      Text("Added on: ${product.fields.time}"),
                      const SizedBox(height: 10),
                      product.fields.imageUrl != null
                          ? Image.network(
                              product.fields.imageUrl!,
                              height: 150,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            )
                          : const Text("No image available"), // Placeholder jika null
                    ],
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
