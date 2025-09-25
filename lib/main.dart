import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portofoliopage/common/app_bars/bottom_bar.dart';
import 'package:portofoliopage/presentation/portfolio/cubit/portfolio_cubit.dart';
import 'package:portofoliopage/service_locator.dart' as di;

void main() {
  di.initDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => di.sl<PortfolioCubit>())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,

        title: 'Portfolio Demo',
        theme: ThemeData(
          fontFamily: 'Roboto',
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: const CommonBotBar(
          defaultIndex: 0,
        ), // Cubit can be accessed from any screen (page
        // in the bottom navigation bar
      ),
    );
  }
}
