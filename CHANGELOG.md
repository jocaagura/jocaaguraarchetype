# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.4.1] - 2024-12-30
### Updated
- Changelog Translation: The changelog has been translated into English for publication on pub.dev.
- Pubspec.yaml: Adjusted to align with the latest version of the jocaagura_domain package, ensuring compatibility and consistency.
### Added
- Dartdoc Documentation: Comprehensive documentation has been added for all classes using the Dartdoc format, providing detailed explanations and examples for developers.
### Improved
- Test Coverage: Expanded the unit test coverage across the package to enhance reliability and ensure higher quality of the codebase.

## [1.4.0] - 2024-05-19
### Added
- Implemented a `Debouncer` in `BlocUserNotifications` to manage how and when the toast messages are displayed uniformly.
- Added `ShowToastPage` in the example to demonstrate the changes on-screen.

### Changed
- Updated `showToast` to use the `Debouncer`, ensuring the message updates properly and stays visible for the defined duration.
- Updated `IndexApp` to allow access or visualization of the `ShowToastPage`.

### Fixed
- Adjusted unit tests to reflect the new scope of `BlocUserNotifications` with the debouncer.
- Corrected capitalization consistency in change sections to maintain uniformity in the document.

## [1.3.1] - 2024-05-13
### Fixed
- Fixed the conditional logic to display the button only when the value is greater than 1.

## [1.3.0] - 2024-05-01
### Changed
- Removed the export of `jocaagura_domain` from the root of the package to clean up the import structure.
- Removed internal invocation of the `jocaagura_archetype` package to avoid circular references and improve modularity.

### Fixed
- Increased test coverage in `FakeProvider` to ensure better validation and reliability of simulated functionalities.

## [1.2.1] - 2024-04-25 (fix)
- Documentation updates to reflect changes and improvements in the modules.
- Fixed various minor issues detected by `dart fix`.

## [1.2.0] - 2024-04-20
### Added
- Added `BlocConnectivity` module with `ConnectivityProvider` and `InternetProvider` to manage connectivity state.

## [1.1.0] - 2024-04-15
### Added
- Added `bloc_session`, `service_session`, and `provider_session` for session management.
- Added `fake_session_provider` to simulate session initiation, facilitating testing and development.

### Fixed
- Fixed warnings and information in `bloc_counter` and `second_app_counter` detected by static code analysis.

## [0.0.1] - 2024-04-10
- Initial Changelog with the current version of modules.
