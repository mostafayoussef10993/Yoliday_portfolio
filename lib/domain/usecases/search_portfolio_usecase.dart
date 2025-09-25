import '../entities/portfolio_item.dart';
import '../repositories/portfolio_repository.dart';

class SearchPortfolioUseCase {
  final PortfolioRepository repository;

  SearchPortfolioUseCase(this.repository);

  List<PortfolioItem> call(String query) {
    final allItems = repository.getAllItems();
    if (query.isEmpty) return allItems;

    return allItems
        .where(
          (item) =>
              item.title.toLowerCase().contains(query.toLowerCase()) ||
              item.subtitle.toLowerCase().contains(query.toLowerCase()),
        )
        .toList();
  }
}
