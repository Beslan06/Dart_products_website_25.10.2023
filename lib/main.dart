import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

final List<String> deviceImages = [
  'assets/images/ovoshi.png',
  'assets/images/orehi.png',
  'assets/images/moloko.png',
  'assets/images/myaso.png',
  'assets/images/riba.png',
  'assets/images/kolbasa.png',
  'assets/images/moroz.png',
  'assets/images/hleb.png',
  'assets/images/bakaleya.png',
  'assets/images/voda.png',
  'assets/images/chay.png',
  'assets/images/sladkiy.png',
  'assets/images/yborka.png',
  'assets/images/morojenoe.png',
  'assets/images/krasota.png',
];

final List<String> categoryDescriptions = [
  'Овощи и фрукты',
  'Орехи и сухофрукты',
  'Молочные продукты',
  'Мясонные продукты',
  'Рыба, морепродукты',
  'Колбасные изделия',
  'Замороженные продукты',
  'Хлеб, выпечка',
  'Бакалея',
  'Вода, соки, напитки',
  'Чай, кофе, какао',
  'Сладости',
  'Уборка и бытовая химия',
  'Мороженное',
  'Красота и здоровье',
];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Kolibri'),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  // TODO: Добавьте действие при нажатии на кнопку поиска
                },
              ),
            ],
          ),
        ),
        drawer: Drawer(
          // TODO: Добавьте список разделов меню здесь
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(),
                ),
                child: Text(
                  'Меню',
                  style: TextStyle(
                    fontSize: 35.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ShadowsInto',
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.notifications),
                title: Text('Уведомление'),
                onTap: () {
                  // TODO: Добавьте действие при нажатии на раздел меню "Уведомление"
                },
              ),
              ListTile(
                leading: Icon(Icons.star),
                title: Text('Рейтинг и отзывы'),
                onTap: () {
                  // TODO: Добавьте действие при нажатии на раздел меню "Рейтинг и отзывы"
                },
              ),
              ListTile(
                leading: Icon(Icons.question_answer),
                title: Text('Вопросы и ответы'),
                onTap: () {
                  // TODO: Добавьте действие при нажатии на раздел меню "Вопросы и ответы"
                },
              ),
              ListTile(
                leading: Icon(Icons.policy),
                title: Text('Условия и положения'),
                onTap: () {
                  // TODO: Добавьте действие при нажатии на раздел меню "Условия и положения"
                },
              ),
              ListTile(
                leading: Icon(Icons.privacy_tip),
                title: Text('Политика конфиденциальности'),
                onTap: () {
                  // TODO: Добавьте действие при нажатии на раздел меню "Политика конфиденциальности"
                },
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text('О нас'),
                onTap: () {
                  // TODO: Добавьте действие при нажатии на раздел меню "О нас"
                },
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text('Телефон'),
                subtitle: Text('+79380069100'),
                onTap: () {
                  launchPhoneCall('+79380069100');
                },
              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text('Почта'),
                subtitle: Text('bor.mm2011@yandex.ru'),
                onTap: () {
                  // TODO: Добавьте действие при нажатии на раздел меню "Контакты"
                },
              ),
            ],
          ),
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Column(
                children: <Widget>[
                  // Категории еды
                  GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    ),
                    itemCount: 15,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.transparent, // Убираем фон за картинкой
                          //color: Colors.blue, ПОДКЛЮЧАЕМ ФОН
                          //borderRadius: BorderRadius.circular(10.0),
                        ),
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            FractionallySizedBox(
                              widthFactor: 0.5, // Задайте желаемую ширину (80%)
                              child: Image.asset(deviceImages[index]),
                            ),
                            SizedBox(height: 10),
                            Text(categoryDescriptions[index],
                                textAlign: TextAlign.center,
                                style: TextStyle().copyWith(
                                  fontSize: 10.0, // Размер шрифта
                                  color: const Color.fromARGB(255, 5, 1, 1),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'ShadowsInto',
                                )),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 4.0,
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 45.0), // Горизонтальные отступы
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.all(1.0), // Отступы для первой кнопки
                  child: IconButton(
                    icon: Icon(Icons.home),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.all(1.0), // Отступы для второй кнопки
                  child: IconButton(
                    icon: Icon(Icons.shopping_cart),
                    onPressed: () {
                      // TODO: Добавьте действие при нажатии на "Корзина"
                    },
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.all(1.0), // Отступы для третьей кнопки
                  child: IconButton(
                    icon: Icon(Icons.person),
                    onPressed: () {
                      // TODO: Добавьте действие при нажатии на "Профиль"
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}

void launchPhoneCall(String phoneNumber) async {
  final Uri url = Uri(scheme: 'tel', path: phoneNumber);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Не удалось запустить $url';
  }
}
