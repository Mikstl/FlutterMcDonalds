import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

final _name = "Анастасія";

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: _MainFrame());
  }
}

class _MainFrame extends StatefulWidget {
  @override
  State<_MainFrame> createState() => _MainFrameState();
}

class _MainFrameState extends State<_MainFrame> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyHomePage(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        selectedFontSize: 8,
        unselectedFontSize: 8,
        items: const [
          BottomNavigationBarItem(
              label: 'Профіль',
              icon: Icon(
                Icons.person,
                size: 22.0,
              )),
          BottomNavigationBarItem(
              label: 'Замовлення',
              icon: Icon(
                Icons.shopping_basket_outlined,
                size: 22.0,
              )),
          BottomNavigationBarItem(
              label: 'Мапа',
              icon: Icon(
                Icons.location_on,
                size: 22.0,
              )),
          BottomNavigationBarItem(
              label: 'Меню',
              icon: Icon(
                Icons.menu_book,
                size: 22.0,
              )),
          BottomNavigationBarItem(
              label: 'Налаштування',
              icon: Icon(
                Icons.settings,
                size: 22.0,
              )),
        ],
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            _nameGreetings(width, height),
            _myListView(width, height),
            _nameTry(),
            _choseMenuView(),
            _nameVauher(),
            _VaucherList(width, height)
          ],
        ),
      ),
    );
  }
}

Widget _nameGreetings(double width, double height) {
  return Column(
    children: [
      Container(
        height: 50,
        decoration: const BoxDecoration(
            border: Border(
                bottom: BorderSide(color: Color(0xffF2FAFD), width: 3.0))),
        padding: EdgeInsets.only(bottom: 5),
        margin: EdgeInsets.only(
            right: 20, left: 20, top: (height * 0.07), bottom: 15),
        alignment: Alignment.center,
        child: Image.asset(
          'assets/macSmall.png',
          width: 42,
          height: 37,
          fit: BoxFit.cover,
        ),
      ),
      Container(
          margin: EdgeInsets.only(right: 20, left: 20, top: 8, bottom: 10),
          width: double.infinity,
          child: AutoSizeText(
            'Доброго дня, $_name',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          )),
    ],
  );
}

Widget _myListView(double width, double height) {
  return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      height: 160,
      width: double.infinity,
      child: ListView(
        itemExtent: (width * 0.9),
        padding: EdgeInsets.all(6),
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.6),
                    blurRadius: 6,
                    offset: Offset(2, 2), // changes position of shadow
                  ),
                ],
                image: const DecorationImage(
                    image: AssetImage('assets/first.png'), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.6),
                    blurRadius: 6,
                    offset: Offset(2, 2), // changes position of shadow
                  ),
                ],
                image: const DecorationImage(
                    image: AssetImage('assets/second.png'), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.6),
                    blurRadius: 6,
                    offset: Offset(2, 2), // changes position of shadow
                  ),
                ],
                image: const DecorationImage(
                    image: AssetImage('assets/first.png'), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ],
      ));
}

Widget _nameTry() {
  return Padding(
    padding: const EdgeInsets.only(left: 20.0, top: 20, right: 30.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        AutoSizeText('Спробуй зараз!',
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            )),
        TextButton(
            onPressed: null,
            child: AutoSizeText('Див.усі',
                style: TextStyle(
                  color: Color(0xff2085D8),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ))),
      ],
    ),
  );
}

class _choseMenuView extends StatefulWidget {
  @override
  State<_choseMenuView> createState() => _choseMenuViewState();
}

class _choseMenuViewState extends State<_choseMenuView> {
  int _selectedButton = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    String firstPicture;
    String secondPicture;

    switch (_selectedButton) {
      case 1:
        {
          firstPicture = 'assets/actual_price_demo1.png';
          secondPicture = 'assets/actual_price_demo2.png';
        }
        break;
      case 2:
        {
          firstPicture = 'assets/macmenu_demo1.png';
          secondPicture = 'assets/macmenu_demo2.png';
        }
        break;
      default:
        {
          firstPicture = 'assets/hot_price_Demo.png';
          secondPicture = 'assets/hot_price_Demo2.png';
        }
        break;
    }

    return Column(
      children: [
        Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            height: 47,
            width: double.infinity,
            child: ListView(
              itemExtent: (width * 0.4),
              padding: EdgeInsets.all(6),
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: ElevatedButton(
                        child: const Text(
                          "Гарячі",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor: (_selectedButton == 0
                              ? MaterialStateProperty.all(
                                  const Color(0xffFFC400))
                              : MaterialStateProperty.all(
                                  const Color(0xffF2FAFD))),
                        ),
                        onPressed: () {
                          setState(() {
                            _selectedButton = 0;
                          });
                        })),
                Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: ElevatedButton(
                        child: const Text(
                          "Актуальні",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor: (_selectedButton == 1
                              ? MaterialStateProperty.all(
                                  const Color(0xffFFC400))
                              : MaterialStateProperty.all(
                                  const Color(0xffF2FAFD))),
                        ),
                        onPressed: () {
                          setState(() {
                            _selectedButton = 1;
                          });
                        })),
                Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: ElevatedButton(
                        child: const Text(
                          "Мак Меню",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor: (_selectedButton == 2
                              ? MaterialStateProperty.all(
                                  const Color(0xffFFC400))
                              : MaterialStateProperty.all(
                                  const Color(0xffF2FAFD))),
                        ),
                        onPressed: () {
                          setState(() {
                            _selectedButton = 2;
                          });
                        })),
              ],
            )),
        Container(
            margin: EdgeInsets.only(left: 10, right: 10, top: 10),
            height: 200,
            width: double.infinity,
            child: ListView(
              itemExtent: (width * 0.9),
              padding: EdgeInsets.all(6),
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.6),
                          blurRadius: 6,
                          offset: Offset(2, 2), // changes position of shadow
                        ),
                      ],
                      image: DecorationImage(
                          image: (AssetImage(firstPicture)), fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.6),
                          blurRadius: 6,
                          offset: Offset(2, 2), // changes position of shadow
                        ),
                      ],
                      image: DecorationImage(
                          image: AssetImage(secondPicture), fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ],
            ))
      ],
    );
  }
}

Widget _nameVauher() {
  return Padding(
    padding: const EdgeInsets.only(left: 20.0, top: 20, right: 30.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        AutoSizeText('Смачні ваучери',
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            )),
        TextButton(
            onPressed: null,
            child: AutoSizeText('Див.усі',
                style: TextStyle(
                  color: Color(0xff2085D8),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ))),
      ],
    ),
  );
}

Widget _VaucherList(double width, double height) {
  return Padding(
    padding: const EdgeInsets.only(left: 20.0, top: 5, right: 10.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 15, bottom: 15),
              child: Container(
                width: (width * 0.435),
                height: 300,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.6),
                      blurRadius: 6,
                      offset: Offset(2, 2), // changes position of shadow
                    ),
                  ],
                  image: const DecorationImage(
                      image: AssetImage('assets/vaucher_one_test.jpg'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Container(
                width: (width * 0.435),
                height: 300,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.6),
                      blurRadius: 6,
                      offset: Offset(2, 2), // changes position of shadow
                    ),
                  ],
                  image: const DecorationImage(
                      image: AssetImage('assets/vaucher_two_test.jpg'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 15, bottom: 15),
              child: Container(
                width: (width * 0.435),
                height: 300,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.6),
                      blurRadius: 6,
                      offset: Offset(2, 2), // changes position of shadow
                    ),
                  ],
                  image: const DecorationImage(
                      image: AssetImage('assets/vaucher_one_test.jpg'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Container(
                width: (width * 0.435),
                height: 300,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.6),
                      blurRadius: 6,
                      offset: Offset(2, 2), // changes position of shadow
                    ),
                  ],
                  image: const DecorationImage(
                      image: AssetImage('assets/vaucher_two_test.jpg'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ],
        )
      ],
    ),
  );
}
