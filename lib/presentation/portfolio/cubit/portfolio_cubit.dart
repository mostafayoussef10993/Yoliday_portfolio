import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portofoliopage/domain/entities/portfolio_item.dart';
import 'package:portofoliopage/domain/usecases/search_portfolio_usecase.dart';

class PortfolioState {
  final List<PortfolioItem> allItems;
  final List<PortfolioItem> filteredItems;

  PortfolioState({required this.allItems, required this.filteredItems});

  PortfolioState copyWith({
    List<PortfolioItem>? allItems,
    List<PortfolioItem>? filteredItems,
  }) {
    return PortfolioState(
      allItems: allItems ?? this.allItems,
      filteredItems: filteredItems ?? this.filteredItems,
    );
  }
}

class PortfolioCubit extends Cubit<PortfolioState> {
  final SearchPortfolioUseCase searchPortfolioUseCase;

  PortfolioCubit(this.searchPortfolioUseCase)
    : super(PortfolioState(allItems: [], filteredItems: [])) {
    // Load initial items from repository
    final items = searchPortfolioUseCase("");
    emit(state.copyWith(allItems: items, filteredItems: items));
  }

  void search(String query) {
    final filtered = searchPortfolioUseCase(query);
    emit(state.copyWith(filteredItems: filtered));
  }
}
