import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
//import 'package:flutter/src/widgets/framework.dart';
import 'package:userlearning/ui/widget/emoticon_dart.dart';
import 'package:userlearning/ui/widget/exercice_liste.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],



      bottomNavigationBar: Container(color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:15.0,vertical: 23),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.blue.shade800,
           padding: EdgeInsets.all(16), 
         
          
            gap: 8,
            tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.favorite_border,
              iconActiveColor:Colors.white ,
              text: 'Likes',
            ),
            GButton(
              icon: Icons.share,
              text: 'Search',
            ),
            GButton(
              icon: Icons.settings,
              text: 'Settings',
            ),
          ]),
        ),
      ),
    






      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hey Kevin',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '17 août 2022',
                        style: TextStyle(
                          color: Colors.blue[200],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12)),
                    child: Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Container(
                decoration: BoxDecoration(
                    color: Colors.blue[600],
                    //border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12)),
                child: Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          size: 40,
                          color: Colors.white,
                        ),
                        hintText: 'cherche ton devoir..',
                        hintStyle: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      'Comment vous sentez-vous?',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  )
                ],
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      EmoticonFace(
                        Face: '😣',
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Bad',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                 
                  Column(
                    children: [
                      EmoticonFace(
                        Face: '😃',
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Heureux',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      EmoticonFace(
                        Face: '🙂',
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Bien',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                   Column(
                    children: [
                      EmoticonFace(
                        Face: '🤩',
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Execelent',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 35),

              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Exercices',
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10),

              Expanded(
                child: ListView(
                  children: [
                    Exerciceliste(
                      icon: Icons.favorite,
                      color: Colors.orange,
                      coursname: 'Français',
                      nombrecours: '5',

                    ),
                      Exerciceliste(
                      icon: Icons.person,
                      color: Colors.green,
                      coursname: 'En cours',
                      nombrecours: '10',

                    ),
                     Exerciceliste(
                      icon: Icons.star,
                      color: Colors.pink,
                      coursname: 'Favoris',
                      nombrecours: '2',

                    ),
                     Exerciceliste(
                      icon: Icons.star,
                      color: Colors.pink,
                      coursname: 'Favoris',
                      nombrecours: '2',

                    ),
                    
                  ],
                ),
              )

             
            ],
          ),
        ),
      ),
    );
  }
}
