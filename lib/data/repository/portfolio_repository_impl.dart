// features/portfolio/data/repositories/portfolio_repository_impl.dart
import 'package:portofoliopage/common/assets/app_images.dart';
import '../../domain/entities/portfolio_item.dart';
import '../../domain/repositories/portfolio_repository.dart';

class PortfolioRepositoryImpl implements PortfolioRepository {
  @override
  List<PortfolioItem> getAllItems() {
    return [
      PortfolioItem(
        imagePath: AppImages.pic1,
        title: "Pic1",
        subtitle: "Nature",
        extra: '1',
      ),
      PortfolioItem(
        imagePath: AppImages.pic2,
        title: "Pic2",
        subtitle: "City",
        extra: '2',
      ),
      PortfolioItem(
        imagePath: AppImages.pic3,
        title: "Pic3",
        subtitle: "Travel",
        extra: '3',
      ),
      PortfolioItem(
        imagePath: AppImages.pic4,
        title: "Pic4",
        subtitle: "Food",
        extra: '4',
      ),
      PortfolioItem(
        imagePath: AppImages.pic5,
        title: "Pic5",
        subtitle: "Art",
        extra: '5',
      ),
    ];
  }
}
