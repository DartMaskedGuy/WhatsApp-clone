import 'package:first_app/components/status_post.dart';
import 'package:flutter/material.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

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
                    'Status', 
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
                            'My Status',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '19h ago',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Expanded(child: Container(),),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(3),
                              child: IconButton(
                                onPressed: (){},
                                icon: Icon(Icons.camera_alt),
                              ),
                            ),
                          ),
                          SizedBox(width: 15,),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(3),
                              child: IconButton(
                                onPressed: (){},
                                icon: Icon(Icons.edit),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 10,),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 35,
                  top: 50,
                  bottom: 10
                ),
                child: Text(
                  'RECENT UPDATES', 
                  style: TextStyle(
                    fontSize: 14, 
                    color: Colors.white.withOpacity(0.7)
                  )
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index){
                    return StatusPost();
                  },
                ),
              ),
              SizedBox(height: 10,),
          ],
      )
    );
  }
}