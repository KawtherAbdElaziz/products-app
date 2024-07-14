import 'package:flutter/material.dart';

class AppSearch extends StatelessWidget {
  const AppSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
              children: [
                Expanded(
                  flex: 6,
                  child: TextField(
                    style: const TextStyle(height: 1),
                    decoration: InputDecoration(
                      hintText: "What do you search for?",
                      hintStyle: TextStyle(
                          color: Colors.black.withOpacity(0.2), fontSize: 15),
                      prefixIcon: const Padding(
                        padding: EdgeInsets.only(left : 20.0),
                        child: Icon(
                          Icons.search,
                          color: Colors.blue,
                          size: 40,
                        ),
                      ),
                      border: const OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: const BorderSide(
                          color: Colors
                              .blue, // This color will be used for the enabled border
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          color: Colors
                              .blue, // This color will be used for the focused border
                          width: 1.0,
                        ),
                      ),
                    ),
                  ),
                ),
                const Expanded(child: Icon(Icons.shopping_cart_outlined,color: Colors.blue,size: 30,))
              ],
            );
  }
}