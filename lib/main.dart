import 'package:flutter/material.dart';
import 'package:wisata_candi_mrezkiriopaldy/screens/detail_screen.dart';
import 'package:wisata_candi_mrezkiriopaldy/data/candi_data.dart';

void main() {
  runApp(const MyApp());
}
class ProfileScreen extends StatefulWidget{
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>{
  //TODO: 1. Deklarasikan variabel yang dibutuhkan
  bool isSignedIn = false;
  String fullName = '';
  String userName = '';
  int favoriteCandiCount = 0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 200, width: double.infinity, color: Colors.deepPurple,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                //TODO: 2. Buat bagian ProfileHeader yang berisi gambar profil
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 200 - 50),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.deepPurple, width: 2),
                            shape: BoxShape.circle,
                          ),
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage('image/placeholder_image_png'),
                          ),
                        ),
                        if(isSignedIn)
                          IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.camera_alt, color: Colors.deepPurple[50],),),
                      ],
                    ),
                  ),
                ),
                //TODO: 3. Buat bagian ProfileInfo yang berisi info profile
                //TODO: 3. Buat ProfileActions yang berisi TextButton sign in/out
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Candi',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ProfileScreen(),
      //home: DetailScreen(candi: candiList[0]),
    );
  }
}


