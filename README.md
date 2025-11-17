# Flutter Clock App

A beautiful cross-platform clock app built with Flutter. Runs seamlessly on Android, iOS, Windows, Linux, and Web.

## ✨ Features

- 🕐 **Real-time Clock Display** - Shows current time with smooth updates
- 🌍 **Cross-Platform** - Works on Android, iOS, Windows, Linux, and Web
- 🎨 **Clean UI** - Modern and intuitive interface
- 📱 **Responsive Design** - Adapts to different screen sizes
- 🚀 **Lightweight** - Minimal resource usage
- ⚡ **Fast Performance** - Built with Flutter for native performance

## 🚀 Download Latest Release

All pre-built apps are available for download in the [GitHub Releases](https://github.com/subhobhai943/flutter-cross-platform-clock/releases) page. Download for your platform:

- **Android:** APK & App Bundle (AAB)
- **iOS:** IPA (unsigned, for testing)
- **Windows:** ZIP (contains .exe)
- **Linux:** Tarball with executable
- **Web:** Live at [GitHub Pages](https://subhobhai943.github.io/flutter-cross-platform-clock/)

Each time a new release or tag is published, all builds are automatically updated in the release!

## 📥 Installation

### Android
1. Download the APK from [Releases](https://github.com/subhobhai943/flutter-cross-platform-clock/releases)
2. Enable "Install from Unknown Sources" in your device settings
3. Open the APK file and install

### Windows
1. Download the Windows ZIP file from [Releases](https://github.com/subhobhai943/flutter-cross-platform-clock/releases)
2. Extract the ZIP file
3. Run the `.exe` file

### Linux
1. Download the Linux tarball from [Releases](https://github.com/subhobhai943/flutter-cross-platform-clock/releases)
2. Extract: `tar -xzf clock_app-linux.tar.gz`
3. Run the executable: `./clock_app`

### Web
Visit the live web version at: [https://subhobhai943.github.io/flutter-cross-platform-clock/](https://subhobhai943.github.io/flutter-cross-platform-clock/)

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

To build locally:

1. Install [Flutter](https://flutter.dev)
2. Clone this repository:
   ```bash
   git clone https://github.com/subhobhai943/flutter-cross-platform-clock.git
   cd flutter-cross-platform-clock
   ```
3. Get dependencies:
   ```bash
   flutter pub get
   ```
4. Run on your platform:
   ```bash
   flutter run -d <platform>
   ```
   Replace `<platform>` with: `android`, `ios`, `windows`, `linux`, `web`, or `chrome`

## 🤝 Contributing

Contributions are welcome! Feel free to:
- Report bugs
- Suggest new features
- Submit pull requests

## 📄 License

This project is open source and available under the MIT License.

---

For workflow details or to customize/build yourself, see [WORKFLOWS.md](WORKFLOWS.md).
