# Ozithy Mobile

Production-grade Flutter buyer client for the Ozithy packaging marketplace.

- **Platforms:** Android + iOS
- **Application ID / Bundle ID:** `com.ozithy.mobile`
- **Backend:** Ozithy PPP Laravel buyer APIs (authoritative business logic)
- **Architecture:** Feature-first MVVM (see `docs/OZITHY_FLUTTER_MOBILE_ENGINEERING_SPEC.md`)
- **Package policy:** Latest stable on pub.dev + widely adopted libraries only (`docs/PACKAGE_POLICY.md`)

## Setup

```bash
export PATH="$HOME/development/flutter/bin:$PATH"
flutter pub get
flutter test
flutter run
```

Optional API origin:

```bash
flutter run --dart-define=OZITHY_API_BASE_URL=https://api.example.com
```
