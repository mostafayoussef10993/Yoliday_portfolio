# 📱 Portfolio E-Commerce App (Flutter)

This project is a Flutter-based mobile application that demonstrates **clean architecture**, **state management**, and **API integration**.  
It was built as a **Portfolio/E-Commerce demo app** where users can:

- Browse portfolio items (fetched from an API).
- Navigate between **Home, Portfolio, Input, Profile** pages using a bottom navigation bar.
- Use a **Filter button** to refine results (UI component).
- Maintain a **highlighted active tab** (orange for the current page).
- Follow a modular project structure (Clean Architecture + BLoC).

---

## 🎨 Design Source

The design, assets, and fonts were taken from the following **Figma file**:  
👉 [Figma Design File](https://www.figma.com/design/bvGltb1AuJMeI4e1kA24zZ/design-test?node-id=0-1&p=f&t=FnpoS7PWHOdEIZWQ-0)

---

## 🚀 Features

- **Portfolio page** as the main screen.
- **Bottom Navigation Bar** with four tabs:
  - 🏠 Home
  - 📂 Portfolio
  - ✍️ Input
  - 👤 Profile
- **Filter button** placed above the bottom navigation bar for quick filtering.
- **State management** using Cubit/BLoC pattern.
- **API integration** with repository layer and clean separation of concerns.
- **Scalable folder structure** for future enhancements.

---

## 📂 Project Structure

lib/
│── main.dart # App entry point
│── service_locator.dart # Dependency injection setup
│
├── common/ # Shared UI and utilities
│ ├── app_bars/ # Common AppBars
│ ├── assets/ # Icons, images
│ ├── buttons/ # Reusable button widgets
│ └── widgets/ # Generic shared widgets
│
├── data/ # Data layer (API, repository impl)
│ └── repository/
│ └── portfolio_repository_impl.dart
│
├── domain/ # Domain layer (business logic)
│ ├── entities/ # Core business models
│ ├── repositories/ # Abstract repository contracts
│ └── usecases/ # Application-specific use cases
│
└── presentation/ # UI layer
├── home_page.dart
├── input_page.dart
|__ profile_page.dart
├── portfolio/
│ └── portfolio_page.dart # Main screen of the app
└── profile_page.dart

yaml
Copy code

---

## 🛠️ Tech Stack

- **Flutter** (Dart)
- **Clean Architecture** (Data → Domain → Presentation)
- **State Management:** BLoC / Cubit
- **Dependency Injection:** Service Locator
- **UI/UX:** Custom bottom navigation bar, filter button

---

## ▶️ Getting Started

1. **Clone the repository:**
   git clone https://github.com/your-username/portfolio-app.git
   cd portfolio-app
Install dependencies:

Copy code
flutter pub get
Run the app:

📌 Notes

By default, the Portfolio tab is highlighted when the app opens.

Navigation uses a custom bottom nav button class that changes colors dynamically.

You can easily extend the app by adding more use cases and repository implementations.

bash
Copy code
flutter run
