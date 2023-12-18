import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'Image Widget',
        ),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 350,
              width: 250,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black, spreadRadius: 5, blurRadius: 10),
                ],
                color: Colors.red,
                image: const DecorationImage(
                  image: NetworkImage(
                    "https://m.media-amazon.com/images/S/pv-target-images/4a47e4137c1d3f295809e9cab273678001f9d6b9e1b662d49c251138c795d36a.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              // child: Image.network(
              //   "https://m.media-amazon.com/images/S/pv-target-images/4a47e4137c1d3f295809e9cab273678001f9d6b9e1b662d49c251138c795d36a.jpg",
              //   fit: BoxFit.cover,
              // ),
            ),
            SizedBox(height: 50),
            Container(
              height: 250,
              width: 250,
              child: CachedNetworkImage(
                imageUrl:
                    "https://www.google.com/imgres?imgurl=https%3A%2F%2Fcdn.fandomwire.com%2Fwp-content%2Fuploads%2F2023%2F04%2F04120053%2FAcross-the-Spider-Verse-Officially-Confirms-Tom-Holland-Tobey-Maguire-and-Andrew-Garfields-Existence-in-First-Trailer.jpg&tbnid=ONO15L7WtkCEoM&vet=10CGUQMyjiAmoXChMIuJeL0dHYggMVAAAAAB0AAAAAEAo..i&imgrefurl=https%3A%2F%2Ffandomwire.com%2Fspider-man-across-the-spider-verse-officially-confirms-tom-holland-tobey-maguire-and-andrew-garfields-existence-in-first-trailer%2F&docid=6-2InBAbTUw_JM&w=1200&h=628&q=spiderman%20accross%20the%20multiverse%20hd&ved=0CGUQMyjiAmoXChMIuJeL0dHYggMVAAAAAB0AAAAAEAo",
                placeholder: (context, url) => Center(child: Container(child: CircularProgressIndicator())),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            )
          ],
        ),
      ),
    );
  }
}
