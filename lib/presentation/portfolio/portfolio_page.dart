import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portofoliopage/common/app_bars/protfolio_appbar.dart';
import 'package:portofoliopage/common/app_bars/search_bar.dart';
import 'package:portofoliopage/common/app_bars/tab_bar.dart';
import 'package:portofoliopage/common/buttons/filter_button.dart';
import 'package:portofoliopage/common/widgets/custom_image_card.dart';
import 'package:portofoliopage/presentation/portfolio/cubit/portfolio_cubit.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    final searchController = TextEditingController();

    return Scaffold(
      appBar: const PortfolioAppBar(),
      body: Stack(
        children: [
          /// Main content
          Column(
            children: [
              const CustomTabBar(),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SearchBarWidget(
                  controller: searchController,
                  onSearch: (value) {
                    context.read<PortfolioCubit>().search(value);
                  },
                ),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: BlocBuilder<PortfolioCubit, PortfolioState>(
                  builder: (context, state) {
                    if (state.filteredItems.isEmpty) {
                      return const Center(child: Text("No projects found"));
                    }
                    return SingleChildScrollView(
                      child: Column(
                        children: state.filteredItems.map((item) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 5,
                            ),
                            child: CustomImageCard(
                              imagePath: item.imagePath,
                              title: item.title,
                              subtitle: item.subtitle,
                              extra: item.extra,
                            ),
                          );
                        }).toList(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),

          /// Floating filter button
          const Positioned(
            bottom: 15, // distance from bottom
            right: 135, // distance from right
            child: FilterButton(),
          ),
        ],
      ),

      /// Bottom navigation bar
    );
  }
}
