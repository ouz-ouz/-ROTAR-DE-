import 'package:flutter/material.dart';
import 'foto_details.dart';

List<ImageDetails> _images = [
  ImageDetails(
    imagePath: 'https://www.mhp.org.tr/autoimg/std_imggal/0/15/1903.jpg',
  ),
  ImageDetails(
    imagePath: 'https://www.mhp.org.tr/autoimg/std_imggal/0/15/1907.jpg',
  ),
  ImageDetails(
    imagePath: 'https://www.mhp.org.tr/autoimg/std_imggal/0/15/1902.jpg',
  ),
  ImageDetails(
    imagePath: 'https://www.mhp.org.tr/autoimg/std_imggal/0/15/1908.jpg',
  ),
  ImageDetails(
    imagePath: 'https://www.mhp.org.tr/autoimg/std_imggal/0/15/1906.jpg',
  ),
  ImageDetails(
    imagePath: 'https://www.mhp.org.tr/autoimg/std_imggal/0/15/1910.jpg',
  ),
  ImageDetails(
    imagePath: 'https://www.mhp.org.tr/autoimg/std_imggal/0/15/2257.jpg',
  ),
  ImageDetails(
    imagePath: 'https://www.mhp.org.tr/autoimg/std_imggal/0/15/1909.jpg',
  ),
  ImageDetails(
    imagePath: 'https://www.mhp.org.tr/autoimg/std_imggal/0/15/1904.jpg',
  ),
  ImageDetails(
    imagePath: 'https://www.mhp.org.tr/autoimg/std_imggal/0/15/1912.jpg',
  ),
  ImageDetails(
    imagePath: 'https://www.mhp.org.tr/autoimg/std_imggal/0/15/1855.jpg',
  ),
  ImageDetails(
    imagePath: 'https://www.mhp.org.tr/autoimg/std_imggal/0/15/1861.jpg',
  ),
];

void main() {
  runApp(Turkes_Foto_Home());
}

class Turkes_Foto_Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Text(
              'Gallery',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return RawMaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsPage(
                              imagePath: _images[index].imagePath,
                            ),
                          ),
                        );
                      },
                      child: Hero(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: NetworkImage(_images[index].imagePath),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: _images.length,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ImageDetails {
  final String imagePath;
  ImageDetails({
    @required this.imagePath,
  });
}