import 'package:material_ui/material_ui.dart';
import 'package:tmda/core/widgets/fade_in_animation.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tmda/core/icons/solar_system_icons.dart';
import 'package:tmda/core/util/color_manager.dart';

  SnackBar errorSnackBar({required String errorMessage, required BuildContext context}) {
    return SnackBar(
    animation: CurvedAnimation(curve: Curves.bounceIn, parent: kAlwaysCompleteAnimation),
    behavior: SnackBarBehavior.floating,
    content: FadeInAnimation(
        duration: const Duration(milliseconds: 250),
        child: Row(
        children: [
          const Icon(SolarSystemIcons.error, color: ColorsManager.errorColor, size: 20,),
          SizedBox(width: 3.w),
          Text(
            errorMessage,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Colors.white),
          ),
        ],
      ),
    ),
  );
  }
