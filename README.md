# myportfolioapp

A Flutter portfolio app showcasing education, projects, skills, certifications, location, and contact information.

## Overview

This app presents a clean, card-based personal portfolio UI built with Flutter (`MaterialApp`) and a gradient-styled `HomePage`. It navigates to dedicated pages for each profile section using `Navigator.push` with `MaterialPageRoute`.

Key files:
- `lib/main.dart` — App entry and all screens (`HomePage`, `EducationPage`, `ProjectsPage`, `LocationPage`, `EmailPage`, `PhonePage`, `SkillsPage`, `CertificationsPage`).
- `images/myimg.jpeg` — Profile image used in `HomePage` via `CircleAvatar`.
- `pubspec.yaml` — Declares assets and Flutter configuration.

## Features
- __Home screen__: Gradient background, profile avatar, name “Ibrahim”, and role “IoT & Robotics Engineer”.
- __Education__: Degree and university summary.
- __Projects__: Multiple IoT/AI/automation projects listed.
- __Location__: Simple country display.
- __Email__: Shows `ibrah******@gmail.com`.
- __Phone__: Masked phone number placeholder.
- __Skills__: Programming, ML/AI, and soft skills.
- __Certifications__: Selected certificates.
- __About Me__: Short bio and creator credit.

## Requirements
- Flutter SDK installed
- Dart SDK (managed with Flutter)
- Android Studio or VS Code with Flutter/Dart extensions

## Setup
1. Clone the repository.
2. Ensure assets are declared in `pubspec.yaml`:
   ```yaml
   flutter:
     uses-material-design: true
     assets:
       - images/myimg.jpeg
   ```
3. Confirm the asset file exists at `images/myimg.jpeg`.
4. Fetch packages:
   ```bash
   flutter pub get
   ```

## Run
Start the app on an emulator or device:
```bash
flutter run
```

## Build
- Android APK:
  ```bash
  flutter build apk --release
  ```
- iOS (on macOS):
  ```bash
  flutter build ios --release
  ```

## Project Structure
```
myportfolioapp/
├─ lib/
│  └─ main.dart            # UI, navigation, and pages
├─ images/
│  └─ myimg.jpeg           # Profile avatar
├─ pubspec.yaml            # Flutter config and assets
└─ README.md
```

## Customization
- Update profile image at `images/myimg.jpeg`.
- Edit texts inside `lib/main.dart` pages (e.g., `EducationPage`, `ProjectsPage`).
- Add more assets via `pubspec.yaml` → `flutter.assets`.

## Contact
For questions or suggestions, reach out at `ibrahim0001@std.bdu.ac.bd`.
