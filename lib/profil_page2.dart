import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilPage2 extends StatelessWidget {
  const ProfilPage2({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWith = MediaQuery.sizeOf(context).width;
    final imagesWith = screenWith / 2;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profil Page',
          style: GoogleFonts.gabriela(),
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
                'assets/images/sc30.jpg',
                width: imagesWith,
                height: imagesWith,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              'Steph Curry',
              style: GoogleFonts.gafata(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.phone),
              title: Text(
                '+1 111 111 111',
                style: GoogleFonts.gafata(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                'Mobile',
                style: GoogleFonts.gafata(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.mail),
              title: Text(
                'sc30@mail.com',
                style: GoogleFonts.gafata(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                'E-mail',
                style: GoogleFonts.gafata(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ...List.generate(10, (index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  'https://media.cnn.com/api/v1/images/stellar/prod/220611102335-steph-curry-finals-game-4.jpg?c=16x9&q=h_653,w_1160,c_fill/f_webp',
                  width: screenWith,
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
