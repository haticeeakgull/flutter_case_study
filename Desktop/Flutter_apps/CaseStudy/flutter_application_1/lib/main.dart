import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp ({super.key});
  final url = "https://avatars.githubusercontent.com/u/103825788?v=4";


Widget _buildItem(String value , String label){
  return
  Expanded(child: Column(
                        children: [
                          Text(value,
                          style: TextStyle(
                          fontSize: 20, 
                          fontWeight: FontWeight.bold,
                          ),
                          ),
                          Text(label)
                        ],
                      ),);
}    
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        backgroundColor: const Color.fromARGB(255, 185, 211, 185),
        appBar: AppBar(
          centerTitle: true,
          title: Text("Profil Sayfası"),
        ),
        body:Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 120,
                  backgroundImage: NetworkImage(url),
                ),Text("Hatice AKGÜL",
                style: TextStyle(
                  color:const Color.fromARGB(255, 35, 53, 36),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                
                ),
                Text("Software Developer",
                style: TextStyle(
                  color: const Color.fromARGB(255, 123, 129, 122),
                  fontSize: 10,
                ),
                ),
                SizedBox(
                  height: 24,
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(children: [
                      _buildItem("3.5M", "takipçi"),
                    _buildItem("250", "takip"),
                    _buildItem("180", "gönderi"),
                    ],),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hakkımda",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                        SizedBox(
                          height: 8,
                        ),
                        Text("Ben gocamı çok seviommm. mesela da sürekli onu göresim geliyo bazenleri göremeyince çok özlüyom"),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )

      ),
    );
  }

  
}