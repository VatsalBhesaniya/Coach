import 'package:coach/config/app_config.dart';
import 'package:coach/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              context.read<ThemeProvider>().setThemeMode(ThemeMode.light);
            },
            icon: const Icon(Icons.light_mode),
          ),
          IconButton(
            onPressed: () {
              context.read<ThemeProvider>().setThemeMode(ThemeMode.dark);
            },
            icon: const Icon(Icons.dark_mode),
          ),
          IconButton(
            onPressed: () {
              context.read<ThemeProvider>().setThemeMode(ThemeMode.system);
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(AppConfig.firebaseApiKey ?? ''),
            Text(Theme.of(context).colorScheme.primary.value.toString()),
            const MyCustomWidget(),
            const SizedBox(height: 20.0),
            ProductCard(
                product: Product(
                    name: 'name',
                    price: 40,
                    imageUrl:
                        'https://static.vecteezy.com/system/resources/thumbnails/001/409/266/small/decorative-diwali-background-in-gold-and-red-free-vector.jpg')),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Custom Button'),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    'Item $index',
                    // style: Theme.of(context).textTheme.titleSmall,
                  ),
                  subtitle: Text(
                    'Description of item $index',
                    // style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  leading: const CircleAvatar(
                    child: Icon(Icons.shopping_cart),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Product {
  final String name;
  final double price;
  final String imageUrl;

  Product({
    required this.name,
    required this.price,
    required this.imageUrl,
  });
}

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(product.imageUrl),
        title: Text(product.name),
        subtitle: Text('Price: \$${product.price}'),
        trailing: ElevatedButton(
          onPressed: () {
            // Add to cart logic
          },
          child: const Text('Add to Cart'),
        ),
      ),
    );
  }
}

class MyCustomWidget extends StatelessWidget {
  const MyCustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Custom Widget',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Custom Button'),
            ),
          ],
        ),
      ),
    );
  }
}
