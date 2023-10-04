import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/**
 * 
 * @see https://riverpod.dev/ko/docs/concepts/reading
 */
class AppHeader extends HookConsumerWidget implements PreferredSizeWidget {
  const AppHeader({super.key});

  @override
  Size get preferredSize => Size.fromHeight(100);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [Image.network('https://static-resources.crescent.network/AKT.png',
    width: 100,
    height: 100,
    fit: BoxFit.contain,
    loadingBuilder: (context, child, progress) {
      return progress == null ? child : Center(
                child: CircularProgressIndicator(
                  value: progress.expectedTotalBytes != null
                      ? progress.cumulativeBytesLoaded /
                          (progress.expectedTotalBytes ?? 0)
                      : null,
                ),
              );
    },
    errorBuilder: (ctx, error, stackTrace) {
        return Container(
          width: 100,
          height: 100,
          color: Colors.red,
        );
      },
    )]);
  }
}