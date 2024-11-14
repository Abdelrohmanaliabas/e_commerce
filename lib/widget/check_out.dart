import 'package:e_commerce/screens/pay.dart';
import 'package:e_commerce/widget/check_out_card.dart';
import 'package:e_commerce/widget/prodact_card.dart';
import 'package:flutter/material.dart';

class CheckOut extends StatelessWidget {
  final List<Map<String, dynamic>> cartProducts;

  const CheckOut({super.key, required this.cartProducts});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back)),
                  const Spacer(),
                  const Text(
                    'Checkout',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Expanded(
                child: (cartProducts ?? []).isEmpty
                    ? const Center(child: Text('No products in the cart'))
                    : ListView.builder(
                        itemCount: cartProducts.length,
                        itemBuilder: (context, index) {
                          final product = cartProducts[index];
                          return ProdactCard(
                            name: product['name'],
                            price: product['price'],
                            rate: product['rate'],
                            image: product['image'],
                            offer: product['offer'],
                          );
                        },
                      ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const Pay();
                      },
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text(
                  'Complete Payment',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
