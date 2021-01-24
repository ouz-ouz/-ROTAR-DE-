import 'package:flutter/material.dart';
import 'foto_details.dart';

List<ImageDetails> _images = [
  ImageDetails(
    imagePath: 'https://www.mhp.org.tr/autoimg/std_imggal/0/2/1554.jpg',
  ),
  ImageDetails(
    imagePath: 'https://www.mhp.org.tr/autoimg/std_imggal/0/5/1558.jpg',
  ),
  ImageDetails(
    imagePath: 'https://www.mhp.org.tr/autoimg/std_imggal/0/5/1562.jpg',
  ),
  ImageDetails(
    imagePath: 'https://www.mhp.org.tr/autoimg/std_imggal/0/5/1563.jpg',
  ),
  ImageDetails(
    imagePath: 'https://www.mhp.org.tr/autoimg/std_imggal/0/5/1559.jpg',
  ),
  ImageDetails(
    imagePath: 'https://www.mhp.org.tr/autoimg/std_imggal/0/1/1550.jpg',
  ),
  ImageDetails(
    imagePath: 'https://www.mhp.org.tr/autoimg/std_imggal/0/1/1533.jpg',
  ),
  ImageDetails(
    imagePath: 'https://www.mhp.org.tr/autoimg/std_imggal/0/1/1540.jpg',
  ),
  ImageDetails(
    imagePath: 'https://www.mhp.org.tr/autoimg/std_imggal/0/1/1534.jpg',
  ),
  ImageDetails(
    imagePath: 'https://www.mhp.org.tr/autoimg/std_imggal/0/1/1531.jpg',
  ),
];

void main() {
  runApp(Bahceli_Foto_Home());
}

class Bahceli_Foto_Home extends StatelessWidget {
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