import 'package:flutter/material.dart';

class TopSide extends StatelessWidget {
  const TopSide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(width: 15,),
                  Text(
                    'Chats', 
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
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.3),
                          isDense: true,
                          contentPadding: EdgeInsets.all(0),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  InkWell(
                    onTap: (){},
                    child: Icon(Icons.filter_alt),
                  ),
                  SizedBox(width: 15,),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox(width: 15,),
                  TextButton(style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                    onPressed: (){},
                    child: Text(
                      'Broadcast Lists',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Spacer(),
                  TextButton(
                    style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                    onPressed: (){},
                    child: Text(
                      'New Group',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(width: 15,),
                ],
              ),
              SizedBox(height: 10,),
              Divider(height: 10,),
              SizedBox(height: 8,),
              Container(
                child: Row(
                  children: [
                    SizedBox(width: 15,),
                    Icon(Icons.archive),
                    SizedBox(width: 15,),
                    Text(
                      'Archived', 
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Spacer(),
                    Text(
                      '99',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blueAccent,
                      ),
                    ),
                    SizedBox(width: 15,),
                  ],
                ),
              ),
              SizedBox(height: 5,),
              Divider(),
            ],
          );
  }
}