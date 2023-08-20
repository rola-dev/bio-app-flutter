import 'package:first_bio_app/widgets/custom_bio_card.dart';
import 'package:first_bio_app/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BioScreen extends StatelessWidget {
  const BioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          'Bio',
          style: TextStyle(fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          //color: Colors.grey,
          gradient: LinearGradient(
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomEnd,
              colors: [
                Color(0xFF9AC5F4),
                Color(0xFFFFEEBB),
              ]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            const CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxd_CSoX9TooDY_f0GnR2iZ87gOAT9BDF0OVwRd6Zz3kUVffKMyQjCmV7ewS4Ihu8GNRU&usqp=CAU',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Flutter Developer',
              style: GoogleFonts.nunito(
                  color: Color.fromARGB(255, 0, 118, 161),
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Rola Tafesh',
              style: GoogleFonts.nunito(
                  height: 1,
                  color: Color.fromARGB(255, 0, 118, 161),
                  fontSize: 13,
                  fontWeight: FontWeight.w400),
            ),
            const Divider(
              thickness: 2,
              color: Color.fromARGB(255, 25, 142, 181),
              indent: 20,
              endIndent: 20,
              height: 50,
            ),
            const CustomBioCard(
              leadingIcon: Icons.phone_android_outlined,
              title: 'Mobile',
              subtitle: '+90_5312422769',
              trailingIcon: Icons.phone,
              bottomMargin: 10,
            ),
            //const CustomBioCard(
            //leadingIcon: Icons.email,
            //title: 'Email',
            //subtitle: 'rolatafesh@gmail.com',
            //trailingIcon: Icons.send),

            CustomListTile(
                leading: Icon(Icons.email),
                title: 'Email',
                subtitle: 'rolatafesh@gmail.com',
                trailing: IconButton(
                  onPressed: () {
                    //debugPrint('Email is sent');
                    _showMessage('Email is sent', context);
                  },
                  icon: Icon(Icons.send),
                ),
                marginBotton: 10),

            CustomListTile(
              leading: Icon(Icons.location_history),
              title: 'Location',
              subtitle: 'Turkey,Istanbul',
              trailing: IconButton(
                onPressed: () {
                  //debugPrint('Location is sent');
                  _showMessage('Location is sent', context);
                },
                icon: Icon(Icons.map),
              ),
            ),
            Spacer(),
            Text(
              '2/8/2023',
              style: GoogleFonts.nunito(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }

  void _showMessage(String meesage, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          meesage,
          style: GoogleFonts.nunito(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green,
        duration: const Duration(seconds: 10),
        dismissDirection: DismissDirection.horizontal,
        action: SnackBarAction(
            textColor: Colors.white,
            label: 'UNDO',
            onPressed: () {
              debugPrint('UNDO Action');
            }),
        elevation: 5,
        margin:
            const EdgeInsetsDirectional.only(bottom: 10, start: 20, end: 20),
        //padding: EdgeInsetsDirectional.symmetric(vertical: 20, horizontal: 20),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
