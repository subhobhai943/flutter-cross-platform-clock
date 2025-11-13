# Flutter Clock App

A cross-platform clock app built in Flutter. Supports Android, iOS, Windows, Linux, and Web.

## 🚀 Download Latest Release

All pre-built apps are available for download in the [GitHub Releases](https://github.com/subhobhai943/flutter-cross-platform-clock/releases) page. Download for your platform:

- **Android:** APK & App Bundle (AAB)
- **iOS:** IPA (unsigned, for testing)
- **Windows:** ZIP (contains .exe)
- **Linux:** Tarball with executable
- **Web:** Live at [GitHub Pages](https://subhobhai943.github.io/flutter-cross-platform-clock/)

Each time a new release or tag is published, all builds are automatically updated in the release!

## ℹ️ How to Use

1. Head to the [Releases page](https://github.com/subhobhai943/flutter-cross-platform-clock/releases).
2. Download the file that matches your operating system/platform.
3. Run/install normally (Android: sideload APK or upload AAB to Play Store, iOS: install IPA via Xcode or AltStore).

## 🛠 How It Works
- All builds are managed by [GitHub Actions Workflows](.github/workflows/release-all-platforms.yml).
- When a new **tag** is pushed to the repository, the workflow builds all platforms and uploads all outputs as release assets.

## 📦 Platforms
- Android (APK, AAB)
- iOS (IPA - unsigned, testing only)
- Windows (zip)
- Linux (tar.gz)
- Web (deploys to GitHub Pages at every push to main)

## 💡 Development
To build locally, install [Flutter](https://flutter.dev), run `flutter pub get`, then `flutter run -d <platform>`.

---

For workflow details or to customize/build yourself, see [WORKFLOWS.md](WORKFLOWS.md).
