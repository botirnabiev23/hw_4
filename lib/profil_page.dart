import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWith = MediaQuery.sizeOf(context).width;
    final imagesWith = screenWith / 2;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profil Page',
          style: GoogleFonts.belgrano(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(width: screenWith),
            ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(imagesWith / 2),
              ),
              child: Image.asset(
                'assets/images/Cristiano_Ronaldo_2018.jpg',
                width: imagesWith,
                height: imagesWith,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              'Cristiano Ronaldo',
              style: GoogleFonts.average(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.phone),
              title: Text(
                '+777 777 777 777',
                style: GoogleFonts.acme(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                'Mobile',
                style: GoogleFonts.acme(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.mail),
              title: Text(
                'cr7@gmail.com',
                style: GoogleFonts.acme(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                'E-mail',
                style: GoogleFonts.acme(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ...List.generate(10, (index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/bltee886584fd1cd345/60db8718892a730f5883a347/68a712aa7ffd3da7d91c2fe1469bda58990f7ab7.jpg?auto=webp&format=pjpg&width=640&quality=60',
                  width: screenWith,
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
