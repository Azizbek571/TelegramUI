import 'package:telegram_clone/config/imports.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/images/man.jpg'),
              ),
              SizedBox(
                  width: 40,
                  child: Image.asset('assets/images/moon.png'))
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            'Azizbek',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          const SizedBox(height: 10),
          const Text('+998 916152923',
              style: TextStyle(
                  color: Color.fromARGB(255, 230, 219, 219)))
        ],
      ),
    );
  }
}
