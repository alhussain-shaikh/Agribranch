// crop_recommend.dart code

import 'package:agri_branch/prediction.dart';
import 'package:flutter/material.dart';
//import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:tflite/tflite.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Crop_Recommend extends StatefulWidget {
  const Crop_Recommend({Key? key}) : super(key: key);

  @override
  State<Crop_Recommend> createState() => _Crop_RecommendState();
}

class _Crop_RecommendState extends State<Crop_Recommend> {
  late bool _loading = true;
  late File _image = File("");
  late List _outputs = [
    {"label": "Unlabelled Soil", "confidence": 0.8}
  ];

  Map cropRecommend = {
    0: ["assets/images/cotton.jpg", "Cotton"],
    1: ["assets/images/strawberry.jpg", "Strawberry"],
    2: ["assets/images/tea.jpg", "Tea"],
    3: ["assets/images/carrot.jpg", "Carrot"],
    4: ["assets/images/maize.jpg", "Maize"],
  };
  _launchURL() async {
    final Uri url = Uri.parse('https://agribranch-buddy.onrender.com');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch');
    }
  }

  // List suitableCrop = [
  //
  // ]

  final _imagepicker = ImagePicker();

  void initState() {
    super.initState();
    _loading = true;

    loadModel().then((value) {
      setState(() {
        _loading = false;
      });
    });
  }

  loadModel() async {
    print("Loading Model Waiting....");
    await Tflite.loadModel(
        model: "assets/images/model_unquant.tflite", labels: "assets/images/labels.txt");
    print("Model Loaded successfully !! ");
    print("Image is =========> ${_image}");
    print("Outputs is =========> ${_outputs}");
  }

  pickImage() async {
    var image = await _imagepicker.getImage(source: ImageSource.gallery);
    if (image == null) return null;
    setState(() {
      _loading = true;
      _image = File(image.path);
    });
    print("Image picked successfully , Loading is : ${_loading}");
    classifyImage(_image);
  }

  classifyImage(File image) async {
    print("Waiting for running the model .... ");
    var output = await Tflite.runModelOnImage(
      path: image.path,
      numResults: 2,
      threshold: 0.5,
      imageMean: 127.5,
      imageStd: 127.5,
    );
    print("Model Ran on image successfully !! ");
    print("After Selecting img is : ${_image}");
    setState(() {
      _loading = false;
      _outputs = output!;
    });
    print("Outputs is ============== ${_outputs}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(212, 255, 208, 1),
      // appBar: AppBar(
      //   title: Text("My Farm"),
      // ),

      body: _loading
          ? Container(
        alignment: Alignment.center,
        child: CircularProgressIndicator(),
      )
          : Container(
        padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _image.path == ""
                ? Container(
              // starting image component
                padding: EdgeInsets.all(20.0),
                height: 250,
                width: 300,
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 5,
                      color: Color.fromRGBO(29, 101, 4, 1),
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.white),
                child: IconButton(
                  icon: Image.asset("assets/images/black.jpg"),
                  onPressed: pickImage,
                ))
                : Container(
              padding: EdgeInsets.all(20.0),
              height: 250,
              width: 300,
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 5,
                    color: Color.fromRGBO(29, 101, 4, 1),
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.white),
              child: Image.file(_image),
            ),
            SizedBox(
              height: 20,
            ),
            _outputs != [] &&
                double.parse("${_outputs[0]["confidence"]}") > 0.8
                ? Flexible(
              child: SingleChildScrollView(

                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Type Of Soil : ",
                          style: GoogleFonts.lora(
                            color: Color.fromRGBO(29, 101, 4,
                                1), // Sets the color to blue
                            fontSize:
                            18.0, // Sets the font size to 16.0 pixels
                            fontWeight: FontWeight
                                .bold, // Sets the font weight to bold
                          ),
                        ),
                        Text(
                          "${_outputs[0]["label"]}"
                              .replaceAll(RegExp(r'[0-9]'), ''),
                          style: GoogleFonts.lora(
                            color: Color.fromRGBO(29, 101, 4,
                                1), // Sets the color to blue
                            fontSize:
                            20.0, // Sets the font size to 16.0 pixels
                            fontWeight: FontWeight
                                .bold, // Sets the font weight to bold
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Suitable Crop : ",
                          style: GoogleFonts.lora(
                            color: Color.fromRGBO(29, 101, 4,
                                1), // Sets the color to blue
                            fontSize:
                            18.0, // Sets the font size to 16.0 pixels
                            fontWeight: FontWeight
                                .bold, // Sets the font weight to bold
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          padding: EdgeInsets.all(20.0),
                          height: 250,
                          width: 300,
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 5,
                                color: Color.fromRGBO(29, 101, 4, 1),
                              ),
                              borderRadius:
                              BorderRadius.circular(30.0),
                              color: Colors.white),
                          child: Image(
                            image: AssetImage(
                              cropRecommend[int.parse(
                                  "${_outputs[0]["index"]}")][0],
                            ),
                            fit: BoxFit.cover,
                            // height: 200,
                            width: MediaQuery.of(context).size.width -
                                20,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          cropRecommend[int.parse(
                              "${_outputs[0]["index"]}")][1],
                          style: GoogleFonts.lora(
                            color: Color.fromRGBO(29, 101, 4,
                                1), // Sets the color to blue
                            fontSize:
                            20.0, // Sets the font size to 16.0 pixels
                            fontWeight: FontWeight
                                .bold, // Sets the font weight to bold
                          ),
                        ),
                        SizedBox(height: 30,),
                        ElevatedButton(
                          onPressed: () async {
                            String url = "https://agribranch-buddy.onrender.com";
                            var urllaunchable = await canLaunch(url); //canLaunch is from url_launcher package
                            if(urllaunchable){
                              await launch(url); //launch is from url_launcher package to launch URL
                            }else{
                              print("URL can't be launched.");
                            }
                          },
                          child: Text(
                            "Predict Yield",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor:  Color.fromRGBO(29, 101, 4, 1),
                          ),
                        ),
                        SizedBox(height: 100,),
                      ],
                    ),
                  ],
                ),
              ),
            )
                : Text(
              " Choose Soil Image ",
              style: GoogleFonts.lora(
                color: Color.fromRGBO(
                    29, 101, 4, 1), // Sets the color to blue
                fontSize: 20.0, // Sets the font size to 16.0 pixels
                fontWeight:
                FontWeight.bold, // Sets the font weight to bold
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: pickImage,
        tooltip: 'Increment',
        child: Icon(
          Icons.camera,
          // color:Color.fromRGBO(29, 101, 4, 1) ,
        ),
      ),
    );
  }
}