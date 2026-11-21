import 'package:material_ui/material_ui.dart';
import 'package:tmda/core/widgets/fade_in_animation.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tmda/core/icons/solar_system_icons.dart';
import 'package:tmda/core/util/color_manager.dart';
import 'package:tmda/core/util/strings_manager.dart';

class NoSearchResults extends StatelessWidget {
  const NoSearchResults({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FadeInAnimation(
        duration: const Duration(milliseconds: 250),
        child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              SolarSystemIcons.error,
              color: ColorsManager.primaryColor,
              size: 70,
            ),
            SizedBox(height: 20.h),
            Text(
              StringsManager.noSearchResults,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color:ColorsManager.darkPrimary),
            ),
          ],
        ),
      ),
    );
  }
}
