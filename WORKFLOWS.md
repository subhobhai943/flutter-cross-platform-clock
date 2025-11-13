# GitHub Workflows Documentation

This repository includes automated GitHub workflows to build and deploy the Flutter Clock app across multiple platforms.

## 📋 Available Workflows

### 1. **Web Deployment to GitHub Pages** (`web-deploy.yml`)
- **Triggers**: Push to `main` branch, manual dispatch
- **Output**: Deployed to GitHub Pages
- **URL**: https://subhobhai943.github.io/flutter-cross-platform-clock/

### 2. **Android App Build** (`build-android.yml`)
- **Triggers**: Push to `main`, Pull Requests, manual dispatch
- **Outputs**: 
  - `app-release.apk` (ready to install)
  - `app-release.aab` (for Play Store)
- **Download**: Check the Actions tab → Select workflow run → Download artifacts

### 3. **iOS App Build** (`build-ios.yml`)
- **Triggers**: Push to `main`, Pull Requests, manual dispatch
- **Output**: `app-release.ipa` (unsigned)
- **Note**: The IPA is unsigned and suitable for testing. For App Store distribution, you'll need to sign it.

### 4. **Windows App Build** (`build-windows.yml`)
- **Triggers**: Push to `main`, Pull Requests, manual dispatch
- **Output**: `windows-app.zip` (contains all executable files)
- **Usage**: Extract and run `clock_app.exe`

### 5. **Linux App Build** (`build-linux.yml`)
- **Triggers**: Push to `main`, Pull Requests, manual dispatch
- **Output**: `linux-app.tar.gz`
- **Usage**: Extract and run the executable

### 6. **Build All Platforms** (`build-all-platforms.yml`)
- **Triggers**: Release creation, manual dispatch
- **Outputs**: All platform builds in one workflow run
- **Best for**: Creating releases with builds for all platforms

## 🚀 Quick Start

### Enable GitHub Pages

1. Go to your repository settings: https://github.com/subhobhai943/flutter-cross-platform-clock/settings/pages
2. Under "Build and deployment":
   - **Source**: Select "GitHub Actions"
3. The web app will automatically deploy on the next push to `main`
4. Access your deployed app at: https://subhobhai943.github.io/flutter-cross-platform-clock/

### Manual Workflow Runs

All workflows (except `build-all-platforms`) run automatically on push. To trigger manually:

1. Go to **Actions** tab
2. Select the workflow you want to run
3. Click **Run workflow** button
4. Choose the branch (usually `main`)
5. Click **Run workflow**

### Download Build Artifacts

1. Go to **Actions** tab
2. Click on the completed workflow run
3. Scroll down to **Artifacts** section
4. Download the platform build you need:
   - `android-apk` - Android APK file
   - `android-appbundle` - Android App Bundle (AAB)
   - `ios-ipa` - iOS app (unsigned)
   - `windows-app` - Windows executable and dependencies
   - `linux-app` - Linux executable and dependencies
   - `web-app` - Web build files

## 📦 Build Configurations

### Flutter Version
- All workflows use **Flutter 3.24.0** (stable channel)
- Update the `flutter-version` in workflow files if needed

### Platform-Specific Settings

**Android:**
- Java 17 (Zulu distribution)
- Builds both APK and AAB formats
- Release mode with optimization

**iOS:**
- Built on macOS runners
- No code signing (testing builds only)
- For App Store: configure signing in Xcode

**Windows:**
- Built on Windows runners
- Includes all runtime dependencies
- 64-bit architecture

**Linux:**
- Built on Ubuntu runners
- Includes GTK dependencies
- 64-bit architecture

**Web:**
- Base href set to `/flutter-cross-platform-clock/`
- Optimized for production
- Deployed via GitHub Pages

## 🔧 Customization

### Changing Flutter Version

Edit the workflow files and update:
```yaml
- name: Setup Flutter
  uses: subosito/flutter-action@v2
  with:
    flutter-version: '3.24.0'  # Change this
    channel: 'stable'
```

### Changing Web Base URL

If you're deploying to a custom domain, update `web-deploy.yml`:
```yaml
- name: Build web app
  run: flutter build web --release --base-href /your-path/
```

### Adding Code Signing (iOS/Android)

For production releases, you'll need to:
1. Add signing certificates as repository secrets
2. Modify the build steps to include signing
3. Refer to Flutter's official documentation for platform-specific signing

## 📊 Workflow Status

Check the status of all workflows:
- Visit: https://github.com/subhobhai943/flutter-cross-platform-clock/actions
- Green checkmark ✅ = Success
- Red X ❌ = Failed (click for details)
- Yellow circle 🟡 = In progress

## 🐛 Troubleshooting

### Web Deployment Not Working
1. Ensure GitHub Pages is enabled in repository settings
2. Source must be set to "GitHub Actions"
3. Check if the workflow has proper permissions (already configured)

### Build Failures
1. Check the workflow logs in the Actions tab
2. Common issues:
   - Missing dependencies in `pubspec.yaml`
   - Platform-specific configuration errors
   - Flutter version compatibility

### Download Artifacts Not Available
- Artifacts are deleted after 90 days (GitHub default)
- Only successful workflow runs generate artifacts
- Some workflows might not produce artifacts on failed builds

## 📝 Notes

- **macOS builds**: iOS workflow uses macOS runners which consume more Actions minutes
- **Artifact retention**: Default is 90 days, can be changed in repository settings
- **Concurrent builds**: Multiple workflows can run simultaneously
- **Branch protection**: Consider enabling branch protection to require workflow success before merging

## 🎯 Next Steps

1. **Enable GitHub Pages** (see Quick Start above)
2. **Test the workflows** by pushing a commit or running manually
3. **Download and test** the platform builds
4. **Create a release** to trigger the comprehensive build workflow
5. **Customize** the workflows based on your needs

## 🔗 Useful Links

- [GitHub Actions Documentation](https://docs.github.com/en/actions)
- [GitHub Pages Documentation](https://docs.github.com/en/pages)
- [Flutter Build Documentation](https://docs.flutter.dev/deployment)
- [Repository Actions](https://github.com/subhobhai943/flutter-cross-platform-clock/actions)
- [Repository Settings](https://github.com/subhobhai943/flutter-cross-platform-clock/settings)
