// core/di/service_locator.dart
import 'package:get_it/get_it.dart';
import 'package:portofoliopage/data/repository/portfolio_repository_impl.dart';
import 'package:portofoliopage/domain/repositories/portfolio_repository.dart';
import 'package:portofoliopage/domain/usecases/search_portfolio_usecase.dart';
import 'package:portofoliopage/presentation/portfolio/cubit/portfolio_cubit.dart';

final sl = GetIt.instance;

void initDependencies() {
  // Repository
  sl.registerLazySingleton<PortfolioRepository>(
    () => PortfolioRepositoryImpl(),
  );

  // UseCase
  sl.registerLazySingleton(() => SearchPortfolioUseCase(sl()));

  // Cubit
  sl.registerFactory(() => PortfolioCubit(sl()));
}
