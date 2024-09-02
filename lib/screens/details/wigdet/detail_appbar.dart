import 'package:flutter/material.dart';

class DetailAppbar extends StatelessWidget {
  const DetailAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          IconButton(
              style: IconButton.styleFrom(
                backgroundColor: Colors.white,
                padding: const EdgeInsets.all(15),
              ),
              onPressed: (){
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios)),
          const Spacer(),

          IconButton(
              style: IconButton.styleFrom(
                backgroundColor: Colors.white,
                padding: const EdgeInsets.all(15),
              ),
              onPressed: (){},
              icon: const Icon(Icons.share)),
          const SizedBox(width: 10,),
          IconButton(
              style: IconButton.styleFrom(
                backgroundColor: Colors.white,
                padding: const EdgeInsets.all(15),
              ),
              onPressed: (){},
              icon: const Icon(Icons.favorite)),


        ],
      ),
    );
  }
}
