# LayerX Generator

**A Flutter package for auto-generating a structured LayerX architecture with GetX integration.**

## Overview

`layerx_generator` simplifies Flutter development by generating a clean, scalable directory structure following the MVVM pattern. It comes with essential service utilities, GetX state management, and pre-configured configurations to streamline project setup.

## Features

- **Automated MVVM Directory Structure:** Generates `lib/app/` with organized layers.
- **GetX Integration:** Preconfigured navigation and state management.
- **Built-in Service Utilities:** Includes `HttpsService`, `SharedPreferencesHelper`, and `JsonExtractor`.
- **Supports Responsive Design:** Integrates `flutter_screenutil` for adaptive UI scaling.
- **Flexible Usage:** Run via CLI or invoke programmatically in your project.

## Installation

Add the package to your project by updating `pubspec.yaml`:

```yaml
dependencies:
  layerx_generator: ^1.1.12
```

Run:

```sh
flutter pub get
```

## Usage

### Command-Line Execution

To generate the LayerX directory structure, run:

```sh
dart run layerx_generator --path .
```

This command creates the complete LayerX architecture inside `lib/app/`.

### Programmatic Execution

You can also generate the structure dynamically within your code:

```dart
import 'package:layerx_generator/layerx_generator.dart';
import 'dart:io';

void main() async {
  final generator = LayerXGenerator(Directory.current.path);
  await generator.generate();
}
```

## Post-Generation Steps

The generated files require additional dependencies. Add the following to `pubspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter
  get: ^4.6.5
  flutter_screenutil: ^5.9.0
  http: ^1.1.0
  shared_preferences: ^2.2.0
  logger: ^2.0.0
```

Then run:

```sh
flutter pub get
```

## Directory Structure

After generation, your project will follow this structured format:

```
lib/app/
├── config/
│   ├── app_assets.dart
│   ├── app_colors.dart
│   ├── app_enums.dart
│   ├── app_routes.dart
│   ├── app_pages.dart
│   ├── app_strings.dart
│   ├── app_urls.dart
│   ├── app_text_style.dart
│   ├── global_variable.dart
│   ├── padding_extensions.dart
│   ├── utils.dart
│   └── config.dart
├── mvvm/
│   ├── model/
│   │   ├── body_model/
│   │   │   └── example_body_model.dart
│   │   ├── response_model/
│   │   │   └── example_response_model.dart
│   │   └── api_response_model/
│   │       └── api_response.dart
│   ├── view/
│   └── view_model/
├── repository/
│   ├── auth_repo/
│   │   └── example_repo.dart
│   ├── firebase/
│   ├── local_db/
│   └── apis/
├── services/
│   ├── https_service.dart
│   ├── shared_preferences_helper.dart
│   └── json_extractor.dart
└── widgets/
```

Additionally, it updates:

- `lib/app/app_widget.dart`: Configures GetX and `flutter_screenutil`.
- `lib/main.dart`: Initializes the application.

## Example Project

To explore a working implementation, check out the `example/` directory.

#### `example/main.dart`

```dart
import 'package:layerx_generator/layerx_generator.dart';
import 'package:flutter/material.dart';
import 'dart:io';

void main() async {
  final generator = LayerXGenerator(Directory.current.path);
  await generator.generate();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('LayerX Generator Example')),
        body: const Center(
          child: Text('LayerX structure generated! Check lib/app/'),
        ),
      ),
    );
  }
}
```

#### `example/pubspec.yaml`

```yaml
name: layerx_generator_example
description: An example project for layerx_generator.
version: 1.0.0

environment:
  sdk: '>=2.18.0 <3.0.0'

dependencies:
  flutter:
    sdk: flutter
  layerx_generator:
    path: ../

dev_dependencies:
  flutter_test:
    sdk: flutter
```

## Changelog


### v1.1.12
- Removed automatic pubspec.yaml modification to prevent overwriting project configurations.
- Users must now manually add required dependencies to pubspec.yaml.
### v0.0.2
- Added CLI and programmatic support.
- Improved MVVM structure.
- Included service utilities for HTTP calls, shared preferences, and JSON extraction.

### v0.0.1
- Initial release with basic directory generation.

## Contributing

Contributions are welcome! If you encounter issues or have feature requests, please open an issue or submit a pull request on GitHub.

**GitHub Repository:** [https://github.com/Umaiir11/layerx_generator](https://github.com/Umaiir11/layerx_generator)
**Medium Blog:** [https://medium.com/@iam.umairimran/layerx-architecture-8e9415d9d624](https://medium.com/@iam.umairimran/layerx-architecture-8e9415d9d624)

## License

This package is licensed under the BSD 3-Clause License. See the `LICENSE` file for more details.

