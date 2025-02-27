import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tmda/core/constants/api_constants.dart';
import 'package:tmda/core/constants/app_constants.dart';

class PersonPictureCard extends StatelessWidget {
  const PersonPictureCard({
    super.key,
    required this.imagePath,
    required this.errorImagePath,
    required this.name,
    required this.height,
  });

  final String imagePath;
  final String errorImagePath;
  final String name;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius:
              const BorderRadius.only(bottomRight: Radius.circular(60)).w,
          child: ColorFiltered(
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.3),
              BlendMode.darken,
            ),
            child: CachedNetworkImage(
              imageUrl: imagePath.isNotEmpty
                  ? ApiConstants.imageUrl(imagePath)
                  : errorImagePath,
              width: MediaQuery.of(context).size.width,
              height: height,
              fit: BoxFit.cover,
              cacheManager: CacheManager(
                  Config(
                    AppConstants.cacheFolder,
                    stalePeriod: const Duration(days: AppConstants.cacheDuration),
                  )
              ),
            ),
          ),
        ),
        Positioned(
          left: 20,
          bottom: 20,
          child: Text(
            name,
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontSize: 28.sp),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
