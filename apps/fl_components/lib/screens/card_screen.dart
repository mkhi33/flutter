import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('CardScreen'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(height: 20),
            CustomCardType2(
                name: 'Hombre en el espacio',
                imageUrl:
                    'https://img.freepik.com/premium-photo/astronaut-outer-open-space-planet-earth-stars-provide-background-erforming-space-planet-earth-sunrise-sunset-our-home-iss-elements-this-image-furnished-by-nasa_150455-16829.jpg?w=2000'),
            SizedBox(height: 20),
            CustomCardType2(
                imageUrl:
                    'https://pga-tour-res.cloudinary.com/image/upload/c_fill,dpr_3.0,f_auto,g_center,h_393,q_auto,w_713/v1/pgatour/editorial/2022/04/17/fleetwood-1694-patricksmith.jpg'),
            SizedBox(height: 20),
            CustomCardType2(
                name:
                    'Happy Diwali 2022: Images, Wishes, Messages, Quotes, Pictures and Greeting Cards',
                imageUrl:
                    'https://static.toiimg.com/photo/msid-87486584/87486584.jpg'),
            SizedBox(height: 20),
            CustomCardType2(
                name: 'Carretera',
                imageUrl:
                    'https://images.unsplash.com/photo-1551713804-f98912ce8085?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8NXx8fGVufDB8fHx8&w=1000&q=80'),
            SizedBox(height: 20),
            CustomCardType2(
                name: 'Planeta tierra',
                imageUrl:
                    'https://www.metoffice.gov.uk/binaries/content/gallery/metofficegovuk/hero-images/advice/maps-satellite-images/satellite-image-of-globe.jpg'),
            SizedBox(height: 20),
          ],
        ));
  }
}
