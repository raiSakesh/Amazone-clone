import 'package:flutter/material.dart';

class AddressBox extends StatelessWidget {
  const AddressBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 114, 226, 221),
            Color.fromARGB(255, 162, 236, 233),
          ],
          stops: [0.5, 1.0],
        ),
      ),
      padding: const EdgeInsets.only(left: 10),
      child: const Row(
        children: [
          Icon(Icons.location_on_outlined, size: 20),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Delivery to Sushmita Majhi',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 5,
              top: 2,
            ),
            child: Icon(
              Icons.arrow_drop_up_outlined,
              size: 18,
            ),
          ),
        ],
      ),
    );
  }
}
