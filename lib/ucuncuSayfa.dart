import 'package:akademi_ucuncu/text_font.dart';
import 'package:flutter/material.dart';

class ucuncuSayfa extends StatelessWidget {
   ucuncuSayfa({Key? key}) : super(key: key);

  var modul1 = const MyCustomText(text: "1\nFlutter Kurulumu");
  var modul2 = const MyCustomText(text: "2\nDart Dilini ve IDE’yi Tanıma");
  var modul3 = const MyCustomText(text: "3\nDart Dilini Derinlemesine Tanıma");
  var modul4 = const MyCustomText(text: "4\nDart ile Nesne Tabanlı Programlama");
  var modul5 = const MyCustomText(text: "5\nCollection\'lar");
  var modul6 = const MyCustomText(text: "6\nFlutter\'a Giriş");
  var modul7 = const MyCustomText(text: "7\nStatefulWidget StatelessWidget");
  var modul8 = const MyCustomText(text: "8\nWidget Ağacı");
  var modul9 = const MyCustomText(text: "9\nLayout");
  var modul10 = const MyCustomText(text: "10\nNavigation");


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 0,
          ),
          body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                  children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.07),
                SizedBox(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       IconButton(onPressed: () {
                         Navigator.of(context).pop(context);
                       }, icon: Icon(Icons.arrow_back_ios),),
                        Expanded(
                          child: Text(
                            textAlign: TextAlign.center,
                            "Modüller",
                            style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ],
                  ),
                ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Button(
                                childText: modul1,
                                onPressed: () {
                                  Navigator.of(context)
                                      .push(MaterialPageRoute(builder: (context) {
                                    return MyCustomText(text: '',);
                                  }),);
                                },
                              ),
                              Button(
                                childText: modul2,
                                onPressed: () {
                                },
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Button(
                                    childText: modul3,
                                    onPressed: () {
                                    }),
                                Button(
                                    childText: modul4,
                                    onPressed: () {
                                    }),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Button(
                                  childText: modul5,
                                  onPressed: () {
                                  }),
                              Button(
                                  childText: modul6,
                                  onPressed: () {
                                  })
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Button(
                                    childText: modul7,
                                    onPressed: () {
                                    }),
                                Button(
                                    childText: modul8,
                                    onPressed: () {
                                    })
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                    Row(
                      children: [
                         Padding(
                           padding: const EdgeInsets.only(left: 30),
                           child: Column(
                             children: [
                               Text("Oyun ve Uygulama\nAkademisi",
                                 style: TextStyle(fontSize: 16),
                                 textAlign: TextAlign.center,
                               ),
                               SizedBox(height: 10,),
                               SizedBox(
                                   width: 40,
                                   child: Image.asset("image/homepage_img_8.png"))
                             ],
                           ),
                         ),
                        Expanded(
                          child: SizedBox(
                              height: 180,
                              width: 230,
                              child: Padding(padding: EdgeInsets.only(right: 12),
                              child: Image.asset("image/apply_img_6.png"))),
                        )

                      ],
                    ),
                  ],
              ),
          ),
        ),
    );

  }
}
