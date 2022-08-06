import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class design extends StatefulWidget {
  const design({Key? key}) : super(key: key);

  @override
  State<design> createState() => _designState();
}

class _designState extends State<design> {
  List list = [
    "Flutter",
    "React",
    "Ionic",
    "Xamarin",
  ];
  bool isChecked = false;
  int groupValue = 0;


  // final List<String> imageList = [
  //  'p1.png','p2.png','p3.jpg','p4.png','p5.png','p6.png','p7.png','p8.jpg','p9.jpg','p10.jpg'
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get widget"),
      ),
      body: ListView(
        children: [
          GFButton(
            onPressed: () {},
            text: "First",
          ),
          GFButton(
            onPressed: () {},
            text: "second",
            type: GFButtonType.outline,
            shape: GFButtonShape.pills,
          ),
          GFButton(
            onPressed: () {},
            text: "Facebook",
            icon: Icon(Icons.facebook),
          ),
          GFAvatar(
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aHVtYW58ZW58MHx8MHx8&w=1000&q=80'),
              shape: GFAvatarShape.standard),
          GFImageOverlay(
            height: 200,
            width: 300,
            child: Center(
              child:
              Text('Strawberry', style: TextStyle(color: GFColors.LIGHT)),
            ),
            image: AssetImage('images/p1.png'),
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.3), BlendMode.darken),
          ),
          GFCard(
            boxFit: BoxFit.cover,
            image: Image.asset('your asset image'),
            title: GFListTile(
              avatar: GFAvatar(
                backgroundImage: AssetImage('your asset image'),
              ),
              title: Text('Card Title'),
              subTitle: Text('Card Sub Title'),
            ),
            content: Text("Some quick example text to build on the card"),
            buttonBar: GFButtonBar(
              children: <Widget>[
                GFButton(
                  onPressed: () {},
                  text: 'Buy',
                ),
                GFButton(
                  onPressed: () {},
                  text: 'Cancel',
                ),
              ],
            ),
          ),
          GFCard(
            boxFit: BoxFit.cover,
            titlePosition: GFPosition.start,
            image: Image.asset(
              'p9.jpg',
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.2,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              fit: BoxFit.cover,
            ),
            showImage: true,
            title: GFListTile(
              avatar: GFAvatar(
                backgroundImage: AssetImage('images/p10.jpg'),
              ),
              titleText: 'Game Controllers',
              subTitleText: 'PlayStation 4',
            ),
            content: Text("Some quick example text to build on the card"),
            buttonBar: GFButtonBar(
              children: <Widget>[
                GFAvatar(
                  backgroundColor: GFColors.PRIMARY,
                  child: Icon(
                    Icons.share,
                    color: Colors.white,
                  ),
                ),
                GFAvatar(
                  backgroundColor: GFColors.SECONDARY,
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
                GFAvatar(
                  backgroundColor: GFColors.SUCCESS,
                  child: Icon(
                    Icons.phone,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          // GFCarousel(
          //   items: imageList.map(
          //     (url) {
          //       return Container(
          //         margin: EdgeInsets.all(8.0),
          //         child: ClipRRect(
          //           borderRadius: BorderRadius.all(Radius.circular(5.0)),
          //           child: Image.network(url, fit: BoxFit.cover, width: 1000.0),
          //         ),
          //       );
          //     },
          //   ).toList(),
          //   onPageChanged: (index) {
          //     setState(() {
          //       index;
          //     });
          //   },
          // ),
          GFListTile(
              titleText: 'Title',
              subTitleText: 'Lorem ipsum dolor sit amet, consectetur adipiscing',
              icon: Icon(Icons.favorite)
          ),
          GestureDetector(
              onTap: () =>
                  GFToast.showToast(
                    'GetFlutter is an open source library that comes with pre-build 1000+ UI components.',
                    context,
                    toastPosition: GFToastPosition.BOTTOM,
                  ),
              child: Container(
                margin: const EdgeInsets.only(left: 15, right: 15, top: 20),
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(7)),
                    color: GFColors.DARK,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.40), blurRadius: 5)
                    ]),
                child: GFListTile(
                    color: GFColors.DARK,
                    title: const Text(
                      'Show Toast with toast position',
                      style: TextStyle(color: GFColors.WHITE),
                    ),
                    icon: Icon(
                      CupertinoIcons.forward,
                      color: GFColors.SUCCESS,
                    )),

              )),
          GFCheckbox(
            size: GFSize.SMALL,
            activeBgColor: GFColors.DANGER,
            onChanged: (value) {
              setState(() {
                isChecked = value;
              });
            },
            value: isChecked,
          ),
          GFRadio(
            size: GFSize.SMALL,
            value: 2,
            groupValue: groupValue,
            onChanged: (value) {
              setState(() {
               value = groupValue;
              });
            },
            inactiveIcon: null,
            activeBorderColor: GFColors.SUCCESS,
            radioColor: GFColors.SUCCESS,
          ),
          GFRadioListTile(
            titleText: 'Arthur Shelby',
            subTitleText: 'By order of the peaky blinders',
            avatar: GFAvatar(
              backgroundImage: AssetImage('Assets image here'),
            ),
            size: 25,
            activeBorderColor: Colors.green,
            focusColor: Colors.green,
            type: GFRadioType.square,
            value: 0,
            groupValue: groupValue,
            onChanged: (value) {
              setState(() {
                groupValue = value;
              });
            },
            inactiveIcon: null,
          ),
          GFRadioListTile(
            titleText: 'Arthur Shelby',
           // subTitle: 'qwqe',
            avatar: GFAvatar(
              backgroundImage: AssetImage('p6.png'),
            ),
            size: 25,
            activeBorderColor: Colors.green,
            focusColor: Colors.green,
            type: GFRadioType.square,
            value: 1,
            groupValue: groupValue,
            onChanged: (value) {
              setState(() {
                groupValue = value;
              });
            },
            inactiveIcon: null,
          ),
        ],
      ),
    );
  }
}
