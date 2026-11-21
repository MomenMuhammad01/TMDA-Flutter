import 'package:auto_route/auto_route.dart';
import 'package:material_ui/material_ui.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tmda/config/router/app_router.dart';
import 'package:tmda/config/theme/theme_manager.dart';
import 'package:tmda/injection_container.dart';
import 'package:tmda/route_observer.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: getIt<AppRouter>().config(
          navigatorObservers: () => [MyRouteObserver(), AutoRouteObserver()],
        ),
        theme: ThemeManager.darkTheme(),
      ),
    );
  }
}
