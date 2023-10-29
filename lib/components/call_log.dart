import 'package:flutter/material.dart';

class CallLog extends StatelessWidget {
  const CallLog({super.key});

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
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
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
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.phone, size: 16, color: Colors.grey,),
                                  SizedBox(width: 5,),
                                  Text(
                                    'Outgoing',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Spacer(),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Today',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(width: 5,),
                              Icon(Icons.info_outline_rounded, color: Colors.blueAccent),
                              SizedBox(width: 10,)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
  }
}