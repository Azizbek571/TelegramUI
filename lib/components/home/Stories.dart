import 'package:telegram_clone/config/imports.dart';

class Stories extends StatefulWidget {
  const Stories({
    super.key,
  });

  @override
  State<Stories> createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {
List images=[AppImages.asadbek, AppImages.azizbek,AppImages.islombek];


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
         height: 40,
          width: 100,
          child: Stack(
            children: List.generate(
              3,
              (index) {
                return Positioned(
                  right:25.0*index,
                  child: CircleAvatar(
                   radius: 20,
                    backgroundImage:CachedNetworkImageProvider(images[index])
                  ),
                );
              },
            ),
          ),
        ),
        const SizedBox(width: 10),
        Text('41 историй', style: TextStyle(color:Colors.white),)
      ],
    );
  }
}
