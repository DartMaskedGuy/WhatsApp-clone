import 'package:flutter/material.dart';

class StatusPost extends StatelessWidget {
  const StatusPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  // borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            height: 65,
                            width: 65,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 4.0, 
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(100)
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                'assets/images/profile.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ubani',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'just now',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // Divider(),
                  ],
                ),
              );
  }
}