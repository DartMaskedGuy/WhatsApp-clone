import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.1),
      body: SingleChildScrollView(
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(width: 15,),
                    Text(
                      'Settings', 
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    SizedBox(width: 15,),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search_outlined, size: 25),
                          hintText: 'Search',
                          hintStyle: TextStyle(fontSize: 23),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                          ),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.1),
                            isDense: true,
                            contentPadding: EdgeInsets.only(top: 6),
                            enabledBorder: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
                  ],
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 10,),
                            Container(
                              height: 65,
                              width: 65,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset(
                                  'assets/images/dmg.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 15,),
                                Text(
                                  'DartMaskedGuy',
                                  style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Flutter Developer',
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.7),
                                    fontSize: 20
                                  ),
                                ),
                                SizedBox(height: 10,)
                              ],
                            ),
                            Spacer(),
                            Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(3),
                                    child: IconButton(
                                      onPressed: (){},
                                      icon: Icon(Icons.qr_code, color: Colors.blueAccent),
                                    ),
                                  ),
                                ),
                            SizedBox(width: 15,),
                          ],
                        ),
                        Divider(height: 1,),
                        Row(
                          children: [
                            SizedBox(width: 15,),
                            Icon(Icons.emoji_emotions_outlined, size: 30),
                            SizedBox(width: 10,),
                            Text(
                              'Avatar',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            Spacer(),
                            IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.arrow_forward_ios, size: 16),
                            ),
                          ],
                        ),
                        SizedBox(height: 5,),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 35,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            SizedBox(width: 15,),
                            Icon(Icons.star, size: 30),
                            SizedBox(width: 10,),
                            Text(
                              'Starred Messages',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            Spacer(),
                            IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.arrow_forward_ios, size: 16),
                            ),
                          ],
                        ),
                        Divider(),
                        Row(
                          children: [
                            SizedBox(width: 15,),
                            Icon(Icons.laptop_mac, size: 30),
                            SizedBox(width: 10,),
                            Text(
                              'Linked Devices',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            Spacer(),
                            IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.arrow_forward_ios, size: 16),
                            ),
                          ],
                        ),
                        SizedBox(height: 5,),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 35,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            SizedBox(width: 15,),
                            Icon(Icons.key, size: 30),
                            SizedBox(width: 10,),
                            Text(
                              'Account',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            Spacer(),
                            IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.arrow_forward_ios, size: 16),
                            ),
                          ],
                        ),
                        Divider(),
                        Row(
                          children: [
                            SizedBox(width: 15,),
                            Icon(Icons.lock, size: 30),
                            SizedBox(width: 10,),
                            Text(
                              'Privacy',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            Spacer(),
                            IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.arrow_forward_ios, size: 16),
                            ),
                          ],
                        ),
                        Divider(),
                        Row(
                          children: [
                            SizedBox(width: 15,),
                            Icon(Icons.chat_bubble, size: 30),
                            SizedBox(width: 10,),
                            Text(
                              'Chats',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            Spacer(),
                            IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.arrow_forward_ios, size: 16),
                            ),
                          ],
                        ),
                        Divider(),
                        Row(
                          children: [
                            SizedBox(width: 15,),
                            Icon(Icons.notifications, size: 30),
                            SizedBox(width: 10,),
                            Text(
                              'Notifications',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            Spacer(),
                            IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.arrow_forward_ios, size: 16),
                            ),
                          ],
                        ),
                        Divider(),
                        Row(
                          children: [
                            SizedBox(width: 15,),
                            Icon(Icons.compare_arrows, size: 30),
                            SizedBox(width: 10,),
                            Text(
                              'Storage and Data',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            Spacer(),
                            IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.arrow_forward_ios, size: 16),
                            ),
                          ],
                        ),
                        SizedBox(height: 5,),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 35,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            SizedBox(width: 15,),
                            Icon(Icons.info_outline, size: 30),
                            SizedBox(width: 10,),
                            Text(
                              'Help',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            Spacer(),
                            IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.arrow_forward_ios, size: 16),
                            ),
                          ],
                        ),
                        Divider(),
                        Row(
                          children: [
                            SizedBox(width: 15,),
                            Icon(Icons.favorite, size: 30),
                            SizedBox(width: 10,),
                            Text(
                              'Tell a Friend',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            Spacer(),
                            IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.arrow_forward_ios, size: 16),
                            ),
                          ],
                        ),
                        SizedBox(height: 5,),
                      ],
                    ),
                  ),
                ),
            ],
        ),
      )
    );
  }
}