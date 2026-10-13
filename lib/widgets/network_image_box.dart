import 'package:flutter/material.dart';

/// Image.network wrapper with a loading indicator and an error fallback,
/// so a missing/slow image never breaks the layout.
class NetworkImageBox extends StatelessWidget {
  final String url;
  final BoxFit fit;

  const NetworkImageBox({
    super.key,
    required this.url,
    this.fit = BoxFit.cover,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      fit: fit,
      width: double.infinity,
      height: double.infinity,
      loadingBuilder: (context, child, progress) {
        if (progress == null) return child;
        return Container(
          color: Colors.grey.shade200,
          alignment: Alignment.center,
          child: const SizedBox(
            width: 24,
            height: 24,
            child: CircularProgressIndicator(strokeWidth: 2),
          ),
        );
      },
      errorBuilder: (context, error, stack) => Container(
        color: Colors.grey.shade200,
        alignment: Alignment.center,
        child: Icon(Icons.image_not_supported_outlined,
            color: Colors.grey.shade500),
      ),
    );
  }
}
