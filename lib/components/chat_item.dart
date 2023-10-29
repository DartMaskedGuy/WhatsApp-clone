import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  final String name;
  final String message;

  ChatItem({required this.name, required this.message});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: (){},
          child: Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 65,
                          height: 65,
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
                              name,
                              style: TextStyle(
                                fontSize: 22,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.done_all),
                                SizedBox(width: 5,),
                                Text(message),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('10:00 AM'),
                    SizedBox(height: 5,),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Align(child: Text('40')),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Divider(),
      ],
    );
  }
}