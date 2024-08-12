import 'package:flutter/material.dart';
import 'dart:math';
/*class lap extends  StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text(
                    'Remon Fayez',
                    style: TextStyle(
                        color: Colors.amberAccent,
                        fontSize: 25,
                    ),
                ),
            ),
        );
    }
}*/
import 'package:flutter/material.dart';

class lap extends StatefulWidget {
    const lap({super.key});

    @override
    State<lap> createState() => _lapState();
}

class _lapState extends State<lap> {
    int i = 0;
    var detailsList = [
        {
            'Patient name': 'Remon',
            'Diagnosis': 'عصبي',
            'recommended treatment': 'يخلص حقه من قليل الاصل',

        },
        {
            'Patient name': 'صموءيل فايز',
            'Diagnosis': 'الكسل',
            'recommended treatment': 'الخروج من البيت'
        },
        {
            'Patient name': 'يوسف اسحاق',
            'Diagnosis': 'الكسل',
            'recommended treatment': 'يطلع رحلة'
        },
        {
            'Patient name': 'Gerses',
            'Diagnosis': 'الكسل',
            'recommended treatment': 'يخرج مع اصحابه'
        },
        {
            'Patient name': 'ارميا محفوظ',
            'Diagnosis': 'الاكتاب',
            'recommended treatment':'يروح القهوة يلعب دور دومنه'
        },
        {
            'Patient name':'عمي الغالي مايز',
            'Diagnosis': 'الجدعنه وكل الحب مع كل الناس',
            'recommended treatment': 'مش مع كل الناس في ناس قليلة اصل كتير'
        },
        {
            'Patient name': 'Andro',
            'Diagnosis': 'الكسل',
            'recommended treatment': 'الخروج مع اصحابه'
        },
        {
            'Patient name': 'فادي موريس',
            'Diagnosis': 'الكسل',
            'recommended treatment':'الخروج من البيت'
        },
        {
            'Patient name': 'يوسف موريس',
            'Diagnosis': 'الاكتاب',
            'recommended treatment':'يلعب كورة',
        },
        {
            'Patient name': 'ارميا موريس',
            'Diagnosis': 'الكسل',
            'recommended treatment': 'يلف بالتوكتوك'
        },
    ];

    @override
    Widget build(BuildContext context) {
        var size = MediaQuery.of(context).size;
        return Scaffold(
            appBar: AppBar(
                leading: Icon(
                    Icons.menu
                ),
                title: Text(
                    'Remon Fayez Apps',
                    style: TextStyle(
                        color: Colors.amberAccent,
                        fontSize: 25,
                    ),
                ),
                actions: [
                    IconButton(
                        icon: Icon(
                            Icons.search
                        ),
                        onPressed: () {
                            print('search cliced');
                        }

                    ),
                    IconButton(
                        icon: Icon(
                            Icons.notifications
                        ),
                        onPressed: () {
                            print('notifications cliced');
                        },
                    )
                ],
                centerTitle: true,
            ),
            body: Stack(
                children: [
                    Container(
                        height: size.height,
                        child: Image(
                            image: NetworkImage(
                                'assets/Copy of mg_background.jpeg',
                            ),
                            width: 100,
                        ),
                    ),
                    Positioned(
                        top: 100,
                        right: 100,
                        child: Text(
                            "${detailsList[i]["Patient name"]}",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff234d7a)),
                        ),
                    ),
                    Positioned(
                        top: 277,
                        right: 115,
                        child: Text(
                            "${detailsList[i]["Diagnosis"]}",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff234d7a),
                            ),
                        ),
                    ),
                    Positioned(
                        top: 455,
                        right: 50,
                        child: Text(
                            "${detailsList[i]["recommended treatment"]}",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff234d7a),
                            ),
                        ),
                    ),
                    Positioned(
                        top: 343,
                        left: 140,
                        child: FilledButton.tonal(
                            style: FilledButton.styleFrom(
                                backgroundColor: Colors.black38,
                                minimumSize: Size(140, 50),
                            ),
                            onPressed: () {
                                setState(
                                        () {
                                        i == 10 ? i = 0 : i++;

                                        print(i);
                                    },
                                );
                            },
                            child: Text(
                                'Tap to play',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                ),
                            ),
                        ),
                    ),
                ],
            ),
        );
    }
}


