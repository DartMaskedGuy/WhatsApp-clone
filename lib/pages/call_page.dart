import 'package:first_app/components/call_log.dart';
import 'package:flutter/material.dart';

class CallPage extends StatelessWidget {
  const CallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.1),
      body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(width: 15,),
                  Text(
                    'Calls', 
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
                  height: 85,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 10,),
                      Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(100)
                        ),
                        child: Icon(Icons.link, color: Colors.blueAccent,)
                      ),
                      SizedBox(width: 15,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 15,),
                          Text(
                            'Create Call Link',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueAccent,
                            ),
                          ),
                          Text(
                            'Share a link for your WhatsApp call',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                              fontSize: 16
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  top: 30,
                  bottom: 10
                ),
                child: Text(
                  'Recent', 
                  style: TextStyle(
                    fontSize: 25, 
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  )
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index){
                    return CallLog();
                  },
                ),
              ),
              SizedBox(height: 10,),
          ],
      )
    );
  }
}