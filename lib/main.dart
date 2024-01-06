import 'package:telegram_clone/components/home/ProfilePic.dart';
import 'package:telegram_clone/config/imports.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

var indexclicked = 5;

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final pages = [
     const Center(
      child: Text('Создать группу'),
    ),
    const Center(
      child: Text('Контакты'),
    ),
    const Center(
      child: Text('Звонки'),
    ),
    const Center(
      child: Text('Люди рядом'),
    ),
    const Center(
      child: Text('Избранное'),
    ),
    const Center(
      child: Text('Настройки'),
    ),
    const Center(
      child: Text('Пригласить друзей'),
    ),
    const Center(
      child: Text('Возможности телеграм'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.telegram),
        title: Stories(),
        actions: [
          Icon(Icons.lock_open_sharp),
          const SizedBox(width: 10),
          Icon(Icons.search),
          const SizedBox(width: 10)
          
        ],
      ),

      body: pages[indexclicked],
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: ProfilePic(),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [

                  ListTile(
                    onTap: () {
                      setState(() {
                        indexclicked = 0;
                      });
                      Navigator.pop(context);
                    },
                    leading: Icon(Icons.people, size: 30),
                    title: const Text(
                      'Создать группу',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),




                  ListTile(
                    onTap: () {
                      setState(() {
                        indexclicked = 1;
                      });
                      Navigator.pop(context);
                    },
                    leading: Icon(Icons.person, size: 30),
                    title: const Text(
                      'Контакты',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),

                  ListTile(
                    onTap: () {
                      setState(() {
                        indexclicked = 2;
                      });
                      Navigator.pop(context);
                    },
                    leading: Icon(Icons.call, size: 30),
                    title: const Text(
                      'Звонки',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),

                  ListTile(
                    onTap: () {
                      setState(() {
                        indexclicked = 3;
                      });
                      Navigator.pop(context);
                    },
                    leading: Icon(Icons.person_pin_circle, size: 30),
                    title: const Text(
                      'Люди рядом',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),

                  ListTile(
                    onTap: () {
                      setState(() {
                        indexclicked = 4;
                      });
                      Navigator.pop(context);
                    },
                    leading: Icon(Icons.save, size: 30),
                    title: const Text(
                      'Избранное',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),

                  ListTile(
                    onTap: () {
                      setState(() {
                        indexclicked = 5;
                      });
                      Navigator.pop(context);
                    },
                    leading: Icon(Icons.settings, size: 30),
                    title: const Text(
                      'Настройки',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),
                  Divider(),

                  ListTile(
                    onTap: () {
                      setState(() {
                        indexclicked = 6;
                      });
                      Navigator.pop(context);
                    },
                    leading: Icon(Icons.person_add, size: 30),
                    title: const Text(
                      'Пригласить друзей',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),

                  ListTile(
                    onTap: () {
                      setState(() {
                        indexclicked = 7;
                      });
                      Navigator.pop(context);
                    },
                    leading: Icon(Icons.question_mark_sharp, size: 30),
                    title: const Text(
                      'Возможности телеграм',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),

                 
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
















// class AppDrawerTile extends StatelessWidget {
//   const AppDrawerTile({
//     super.key,
//     required this.index,
//     required this.onTap
//   });
//   final int index;
//   final Function onTap;

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       onTap: onTap(),
//       leading: Icon(Icons.person, size: 30),
//       title: Text(
//         'Контакты'[index],
//         style: TextStyle(
//             fontSize: 15,
//             fontWeight: FontWeight.w500,
//             color: Color.fromARGB(255, 0, 0, 0)),
//       ),
//     );
//   }
// }

