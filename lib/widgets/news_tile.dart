import 'package:flutter/material.dart';
import 'package:news_app/models/artical_model.dart';

import '../views/webView_view.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({
    super.key,
    required this.articale,
  });
  final ArticalModel articale;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () {
      //   if (articale.url != null && articale.url!.isNotEmpty) {
      //     Navigator.push(
      //       context,
      //       MaterialPageRoute(
      //         builder: (context) => WebViewScreen(url: articale.url!),
      //       ),
      //     );
      //   } else {
      //     ScaffoldMessenger.of(context).showSnackBar(
      //       const SnackBar(content: Text('No URL available for this article.')),
      //     );
      //   }
      // },
    child: Card(
    elevation: 4, // Adjust shadow intensity
    //margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12), // Add spacing between cards
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12), // Rounded corners for the card
    ),
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: articale.image != null
                  ? Image.network(
                      articale.image!,
                      fit: BoxFit.cover,
                      height: 200,
                      width: double.infinity,
                      errorBuilder: (context, error, stackTrace) {
                        return Image.asset(
                          'assets/business.avif',
                          fit: BoxFit.cover,
                          height: 200,
                          width: double.infinity,
                        );
                      },
                    )
                  : Image.asset(
                      'assets/business.avif',
                      fit: BoxFit.cover,
                      height: 200,
                      width: double.infinity,
                    ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              articale.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.black87,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              articale.subtitle ?? '',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}






