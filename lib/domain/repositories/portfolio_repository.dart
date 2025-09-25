import 'package:portofoliopage/domain/entities/portfolio_item.dart';

abstract class PortfolioRepository {
  List<PortfolioItem> getAllItems();
}
