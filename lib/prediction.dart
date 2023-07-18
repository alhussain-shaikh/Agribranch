import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Prediction extends StatefulWidget {
  const Prediction({Key? key}) : super(key: key);

  @override
  State<Prediction> createState() => _PredictionState();
}

class _PredictionState extends State<Prediction> {

  List<DropdownMenuItem<String>> get dropdownState{
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Andaman and Nicobar Islands"),value: "Andaman and Nicobar Islands"),
      DropdownMenuItem(child: Text("Andhra Pradesh"),value: "Andhra Pradesh"),
      DropdownMenuItem(child: Text("Arunachal Pradesh"),value: "Arunachal Pradesh"),
    ];
    return menuItems;
  }
  List<DropdownMenuItem<String>> get dropdownSeason{
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Autumn     "),value: "Autumn     "),
      DropdownMenuItem(child: Text("Kharif     "),value: "Kharif     "),
      DropdownMenuItem(child: Text("Rabi       "),value: "Rabi       "),
      DropdownMenuItem(child: Text("Whole Year "),value: "Whole Year "),
    ];
    return menuItems;
  }
  List<DropdownMenuItem<String>> get dropdownDistrict{
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("ANANTAPUR"),value: "ANANTAPUR"),
      DropdownMenuItem(child: Text("ANJAW"),value: "ANJAW"),
      DropdownMenuItem(child: Text("CHANGLANG"),value: "CHANGLANG"),
      DropdownMenuItem(child: Text("CHITTOOR"),value: "CHITTOOR"),
      DropdownMenuItem(child: Text("EAST GODAVARI"),value: "EAST GODAVARI"),
      DropdownMenuItem(child: Text("GUNTUR"),value: "GUNTUR"),
      DropdownMenuItem(child: Text("KADAPA"),value: "KADAPA"),
      DropdownMenuItem(child: Text("KRISHNA"),value: "KRISHNA"),
      DropdownMenuItem(child: Text("KURNOOL"),value: "KURNOOL"),
      DropdownMenuItem(child: Text("NICOBARS"),value: "NICOBARS"),
      DropdownMenuItem(child: Text("NORTH AND MIDDLE ANDAMAN"),value: "NORTH AND MIDDLE ANDAMAN"),
      DropdownMenuItem(child: Text("PRAKASAM"),value: "PRAKASAM"),
      DropdownMenuItem(child: Text("SOUTH ANDAMANS"),value: "SOUTH ANDAMANS"),
      DropdownMenuItem(child: Text("SPSR NELLORE"),value: "SPSR NELLORE"),
      DropdownMenuItem(child: Text("SRIKAKULAM"),value: "SRIKAKULAM"),
      DropdownMenuItem(child: Text("VISAKHAPATANAM"),value: "VISAKHAPATANAM"),
      DropdownMenuItem(child: Text("VIZIANAGARAM"),value: "VIZIANAGARAM"),
      DropdownMenuItem(child: Text("WEST GODAVARI"),value: "WEST GODAVARI"),
    ];
    return menuItems;
  }
  List<DropdownMenuItem<String>> get dropdownCrop{
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Arecanut"),value: "Arecanut"),
      DropdownMenuItem(child: Text("Arhar/Tur"),value: "Arhar/Tur"),
      DropdownMenuItem(child: Text("Bajra"),value: "Bajra"),
      DropdownMenuItem(child: Text("Banana"),value: "Banana"),
      DropdownMenuItem(child: Text("Beans & Mutter(Vegetable)"),value: "Beans & Mutter(Vegetable)"),
      DropdownMenuItem(child: Text("Bhindi"),value: "Bhindi"),
      DropdownMenuItem(child: Text("Black pepper"),value: "Black pepper"),
      DropdownMenuItem(child: Text("Bottle Gourd"),value: "Bottle Gourd"),
      DropdownMenuItem(child: Text("Brinjal"),value: "Brinjal"),
      DropdownMenuItem(child: Text("Cabbage"),value: "Cabbage"),
      DropdownMenuItem(child: Text("Cashewnut"),value: "Cashewnut"),
      DropdownMenuItem(child: Text("Castor seed"),value: "Castor seed"),
      DropdownMenuItem(child: Text("Citrus Fruit"),value: "Citrus Fruit"),
      DropdownMenuItem(child: Text("Coconut"),value: "Coconut"),
      DropdownMenuItem(child: Text("Coriander"),value: "Coriander"),
      DropdownMenuItem(child: Text("Cotton(lint)"),value: "Cotton(lint)"),
      DropdownMenuItem(child: Text("Cowpea(Lobia)"),value: "Cowpea(Lobia)"),
      DropdownMenuItem(child: Text("Cucumber"),value: "Cucumber"),
      DropdownMenuItem(child: Text("Dry chillies"),value: "Dry chillies"),
      DropdownMenuItem(child: Text("Dry ginger"),value: "Dry ginger"),
      DropdownMenuItem(child: Text("Garlic"),value: "Garlic"),
      DropdownMenuItem(child: Text("Ginger"),value: "Ginger"),
      DropdownMenuItem(child: Text("Gram"),value: "Gram"),
      DropdownMenuItem(child: Text("Groundnut"),value: "Groundnut"),
      DropdownMenuItem(child: Text("Horse-gram"),value: "Horse-gram"),
      DropdownMenuItem(child: Text("Jowar"),value: "Jowar"),
      DropdownMenuItem(child: Text("Korra"),value: "Korra"),
      DropdownMenuItem(child: Text("Lemon"),value: "Lemon"),
      DropdownMenuItem(child: Text("Linseed"),value: "Linseed"),
      DropdownMenuItem(child: Text("Maize"),value: "Maize"),
      DropdownMenuItem(child: Text("Mango"),value: "Mango"),
      DropdownMenuItem(child: Text("Masoor"),value: "Masoor"),
      DropdownMenuItem(child: Text("Mesta"),value: "Mesta"),
      DropdownMenuItem(child: Text("Moong(Green Gram)"),value: "Moong(Green Gram)"),
      DropdownMenuItem(child: Text("Niger seed"),value: "Niger seed"),
      DropdownMenuItem(child: Text("Oilseeds total"),value: "Oilseeds total"),
      DropdownMenuItem(child: Text("Onion"),value: "Onion"),
      DropdownMenuItem(child: Text("Orange"),value: "Orange"),
      DropdownMenuItem(child: Text("Other  Rabi pulses"),value: "Other  Rabi pulses"),
      DropdownMenuItem(child: Text("Other Fresh Fruits"),value: "Other Fresh Fruits"),
      DropdownMenuItem(child: Text("Other Kharif pulses"),value: "Other Kharif pulses"),
      DropdownMenuItem(child: Text("Other Vegetables"),value: "Other Vegetables"),
      DropdownMenuItem(child: Text("Papaya"),value: "Papaya"),
      DropdownMenuItem(child: Text("Peas  (vegetable)"),value: "Peas  (vegetable)"),
      DropdownMenuItem(child: Text("Pome Fruit"),value: "Pome Fruit"),
      DropdownMenuItem(child: Text("Pome Granet"),value: "Pome Granet"),
      DropdownMenuItem(child: Text("Potato"),value: "Potato"),
      DropdownMenuItem(child: Text("Pulses total"),value: "Pulses total"),
      DropdownMenuItem(child: Text("Ragi"),value: "Ragi"),
      DropdownMenuItem(child: Text("Rapeseed &Mustard"),value: "Rapeseed &Mustard"),
      DropdownMenuItem(child: Text("Rice"),value: "Rice"),
      DropdownMenuItem(child: Text("Safflower"),value: "Safflower"),
      DropdownMenuItem(child: Text("Samai"),value: "Samai"),
      DropdownMenuItem(child: Text("Sapota"),value: "Sapota"),
      DropdownMenuItem(child: Text("Sesamum"),value: "Sesamum"),
      DropdownMenuItem(child: Text("Small millets"),value: "Small millets"),
      DropdownMenuItem(child: Text("Soyabean"),value: "Soyabean"),
      DropdownMenuItem(child: Text("Sugarcane"),value: "Sugarcane"),
      DropdownMenuItem(child: Text("Sunflower"),value: "Sunflower"),
      DropdownMenuItem(child: Text("Sweet potato"),value: "Sweet potato"),
      DropdownMenuItem(child: Text("Tapioca"),value: "Tapioca"),
      DropdownMenuItem(child: Text("Tobacco"),value: "Tobacco"),
      DropdownMenuItem(child: Text("Tomato"),value: "Tomato"),
      DropdownMenuItem(child: Text("Turmeric"),value: "Turmeric"),
      DropdownMenuItem(child: Text("Urad"),value: "Urad"),
      DropdownMenuItem(child: Text("Varagu"),value: "Varagu"),
      DropdownMenuItem(child: Text("Wheat"),value: "Wheat"),
      DropdownMenuItem(child: Text("other fibres"),value: "other fibres"),
      DropdownMenuItem(child: Text("other misc. pulses"),value: "other misc. pulses"),
      DropdownMenuItem(child: Text("other oilseeds"),value: "other oilseeds"),


    ];
    return menuItems;
  }

  Map stateMap = {'Andaman and Nicobar Islands': 0, 'Andhra Pradesh': 1, 'Arunachal Pradesh': 2} ;
  Map districtMap = {'ANANTAPUR': 0, 'ANJAW': 1, 'CHANGLANG': 2, 'CHITTOOR': 3, 'EAST GODAVARI': 4, 'GUNTUR': 5, 'KADAPA': 6, 'KRISHNA': 7, 'KURNOOL': 8, 'NICOBARS': 9, 'NORTH AND MIDDLE ANDAMAN': 10, 'PRAKASAM': 11, 'SOUTH ANDAMANS': 12, 'SPSR NELLORE': 13, 'SRIKAKULAM': 14, 'VISAKHAPATANAM': 15, 'VIZIANAGARAM': 16, 'WEST GODAVARI': 17} ;
  Map seasonMap = {'Autumn     ': 0, 'Kharif     ': 1, 'Rabi       ': 2, 'Whole Year ': 3} ;
  Map cropMap =  {'Arecanut': 0, 'Arhar/Tur': 1, 'Bajra': 2, 'Banana': 3, 'Beans & Mutter(Vegetable)': 4, 'Bhindi': 5, 'Black pepper': 6,
    'Bottle Gourd': 7, 'Brinjal': 8, 'Cabbage': 9, 'Cashewnut': 10, 'Castor seed': 11, 'Citrus Fruit': 12, 'Coconut ': 13,
    'Coriander': 14, 'Cotton(lint)': 15, 'Cowpea(Lobia)': 16, 'Cucumber': 17, 'Dry chillies': 18, 'Dry ginger': 19,
    'Garlic': 20, 'Ginger': 21, 'Gram': 22, 'Grapes': 23, 'Groundnut': 24, 'Horse-gram': 25, 'Jowar': 26, 'Korra': 27,
    'Lemon': 28, 'Linseed': 29, 'Maize': 30, 'Mango': 31, 'Masoor': 32, 'Mesta': 33, 'Moong(Green Gram)': 34, 'Niger seed': 35,
    'Oilseeds total': 36, 'Onion': 37, 'Orange': 38, 'Other  Rabi pulses': 39, 'Other Fresh Fruits': 40, 'Other Kharif pulses': 41,
    'Other Vegetables': 42, 'Papaya': 43, 'Peas  (vegetable)': 44, 'Pome Fruit': 45, 'Pome Granet': 46, 'Potato': 47, 'Pulses total': 48,
    'Ragi': 49, 'Rapeseed &Mustard': 50, 'Rice': 51, 'Safflower': 52, 'Samai': 53, 'Sapota': 54, 'Sesamum': 55, 'Small millets': 56,
    'Soyabean': 57, 'Sugarcane': 58, 'Sunflower': 59, 'Sweet potato': 60, 'Tapioca': 61, 'Tobacco': 62, 'Tomato': 63, 'Turmeric': 64, 'Urad': 65,
    'Varagu': 66, 'Wheat': 67, 'other fibres': 68, 'other misc. pulses': 69, 'other oilseeds': 70} ;

  String selectedState = "Andhra Pradesh";
  String selectedDistrict = "ANANTAPUR" ;
  String selectedSeason = "Autumn     ";
  String selectedCrop = "Arecanut" ;
  String selectedArea = "158.5 ";

  bool showYield = false ;

  double expectedYield = 1345.23 ;

  void predictYield(){
    showYield = true ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Yield Prediction"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 25, 20, 25),
          child: SingleChildScrollView(
            child: Column(

              children: [
                DropdownButtonFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    dropdownColor: Colors.white,
                    value: selectedState,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedState = newValue!;
                      });
                    },
                    items: dropdownState
                ),
                SizedBox(height: 40,),
                DropdownButtonFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    dropdownColor: Colors.white,
                    value: selectedDistrict,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedDistrict = newValue!;
                      });
                    },
                    items: dropdownDistrict
                ),
                SizedBox(height: 40,),
                DropdownButtonFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    dropdownColor: Colors.white,
                    value: selectedCrop,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedCrop = newValue!;
                      });
                    },
                    items: dropdownCrop
                ),
                SizedBox(height: 40,),
                DropdownButtonFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    dropdownColor: Colors.white,
                    value: selectedSeason,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedSeason = newValue!;
                      });
                    },
                    items: dropdownSeason
                ),
                SizedBox(height: 40,),
                TextField(
                  onChanged: (value) {
                    setState(() {
                      selectedArea = value;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: 'Enter Field Area',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green, width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green, width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 40,),
                ElevatedButton(
                  onPressed: (){
                    // return GoRouter.of(context).go("/yieldPredict");
                    // predictYield
                    setState(() {
                      showYield = true ;
                    });
                  },
                  child: Text(
                    "Calculate Yield",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                ),
                SizedBox(height: 40,),
                showYield ? Text(
                    "Expected Yield is : ${expectedYield}",
                    style: GoogleFonts.lora(
                      color: Color.fromRGBO(29, 101, 4,
                          1), // Sets the color to blue
                      fontSize:
                      18.0, // Sets the font size to 16.0 pixels
                      fontWeight: FontWeight
                          .bold, // Sets the font weight to bold
                    )
                )
                    : Container(

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}