import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class TeamInfo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TeamInfoState();
  }

}

class TeamInfoState extends State<TeamInfo> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      //backgroundColor: const Color(0xFFFEFBEA)
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: GradientColors.februaryInk,
            )
        ),
        child: SingleChildScrollView(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              const SizedBox(height: 30,),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          icon: const Icon(Icons.arrow_back),
                          onPressed: ()=>Navigator.pop(context),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(35, 10, 0, 0),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Text('Meet The Team',style: GoogleFonts.poppins(fontSize: 24,color: Colors.black),),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: GestureDetector(
                  onTap:()=>launch('https://www.linkedin.com/in/al-hussain-shaikh-033729231/'),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20),
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.green,
                          backgroundImage: NetworkImage('https://i.ibb.co/pdGgZr3/Alhussain.jpg'),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('Al-Hussain',style: GoogleFonts.poppins(fontSize: 24,color: Colors.white,fontWeight: FontWeight.w600),),
                            Text('Tech Lead',style: GoogleFonts.poppins(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w300),),
                            Text('Know More >',style: GoogleFonts.poppins(color: Colors.white),),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: GestureDetector(
                  onTap:()=>launch('https://www.linkedin.com/in/akshay-jadhav-9009671b0/'),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: const Color(0xFFf8b470),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Akshay Jadhav',style: GoogleFonts.poppins(fontSize: 24,color: Colors.white,fontWeight: FontWeight.w600),),
                            Text('Firebase Developer',style: GoogleFonts.poppins(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w300),),
                            Text('Know More >',style: GoogleFonts.poppins(color: Colors.white),),
                          ],
                        ),
                        const CircleAvatar(
                          backgroundColor: const Color(0xFFf8b470),
                          radius: 45,
                          backgroundImage: NetworkImage('https://i.ibb.co/hYLxqx9/Akshay.jpg'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: GestureDetector(
                  onTap:()=>launch('https://www.linkedin.com/in/aakash-m-aa15b9231/'),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration:BoxDecoration(
                      color:  Colors.green,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.green,
                          backgroundImage: NetworkImage('https://i.ibb.co/JvtwL0r/Aakash.jpg'),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('Aakash ',style: GoogleFonts.poppins(fontSize: 24,color: Colors.white,fontWeight: FontWeight.w600),),
                            Text('UI Developer',style: GoogleFonts.poppins(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w300),),
                            Text('Know More >',style: GoogleFonts.poppins(color: Colors.white),)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: GestureDetector(
                  onTap: ()=>launch('https://www.linkedin.com/in/anish-bonde-ba8a21230/'),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration:BoxDecoration(
                      color: const Color(0xFFf8b470),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Anish Bonde',style: GoogleFonts.poppins(fontSize: 24,color: Colors.white,fontWeight: FontWeight.w600),),
                            Text('ML Developer',style: GoogleFonts.poppins(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
                            Text('Know More >',style: GoogleFonts.poppins(color: Colors.white),),
                          ],
                        ),
                        const CircleAvatar(
                          radius: 50,
                          backgroundColor: const Color(0xFFf8b470),
                          backgroundImage: NetworkImage('https://i.ibb.co/b7dcM34/Anish.jpg'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}