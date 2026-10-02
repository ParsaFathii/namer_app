<div align="center">

# 🏷️ Namer App

**A random name-pair generator with a favorites list — built with Material 3, `NavigationBar` and `provider`.**

[![Flutter](https://img.shields.io/badge/Flutter-02569B?style=flat-square&logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=flat-square&logo=dart&logoColor=white)](https://dart.dev)
[![provider](https://img.shields.io/badge/provider-6.x-02569B?style=flat-square)](https://pub.dev/packages/provider)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=flat-square)](LICENSE)

</div>

---

## 🇬🇧 English

My take on the official **Flutter "Write your first Flutter app" codelab**: a business-name generator that produces random word pairs (like "Swift Sunset" or "Crimson Falcon"). You can favorite pairs, browse them on a separate page, and remove the ones you no longer like.

Beyond the basics, this app is where I first practiced the patterns that scale to real projects:

- **App-wide state** with `ChangeNotifier` + `provider` (no `setState` spaghetti)
- **Adaptive navigation** with `NavigationBar` and index-based page switching
- **`AnimatedList`** for smooth insertions of new generated names
- **Big-picture layout** with `LayoutBuilder` — navigation rail on wide screens, bottom bar on phones

### ✨ What's inside

| Concept | Where it lives |
|---|---|
| `ChangeNotifier` app state + `provider` | `lib/main.dart` — `MyAppState` |
| Material 3 theming (`ColorScheme.fromSeed`) | `lib/main.dart` |
| `NavigationBar` / `NavigationRail` adaptive layout | `lib/main.dart` |
| `AnimatedList` with a global key | `lib/main.dart` — `BigCard`, history list |
| `english_words` package for word pairs | `pubspec.yaml` |

### 🚀 Run it

```bash
flutter pub get
flutter run
```

---

## 🇮🇷 فارسی

نسخهٔ من از **کدلب رسمی Flutter** («اولین اپ فلاتر خود را بسازید»): یک مولد نام تصادفی که جفت‌کلمه‌های تصادفی می‌سازد (مثل «غروب سریع» یا «شاهین سرخ»). می‌توانید نام‌ها را به علاقه‌مندی‌ها اضافه کنید، در صفحه‌ای جدا مرورشان کنید و حذف کنید.

فراتر از مبانی، این اپ اولین جایی بود که الگوهایی را تمرین کردم که در پروژه‌های واقعی به کار می‌آیند:

- **وضعیت سراسری اپ** با `ChangeNotifier` و `provider` (بدون `setState`های پخش‌شده)
- **ناوبری تطبیقی** با `NavigationBar` و سوییچ صفحه بر اساس ایندکس
- **`AnimatedList`** برای درج نرم نام‌های جدید
- **چیدمان واکنش‌گرا** با `LayoutBuilder` — ریل ناوبری در صفحه‌های عریض، نوار پایین در موبایل

### ✨ چه چیزهایی در آن هست

| مفهوم | محل استفاده |
|---|---|
| وضعیت اپ با `ChangeNotifier` و `provider` | `lib/main.dart` — کلاس `MyAppState` |
| تم‌پردازی Material 3 | `lib/main.dart` |
| ناوبری تطبیقی `NavigationBar` / `NavigationRail` | `lib/main.dart` |
| لیست متحرک `AnimatedList` | `lib/main.dart` |
| پکیج `english_words` برای جفت‌کلمه‌ها | `pubspec.yaml` |

### 🚀 اجرا

```bash
flutter pub get
flutter run
```

---

<div align="center">

**Built with Flutter · Maintained by [Parsa Fathi](https://github.com/ParsaFathii)**

</div>
