# Stream Intent Handler for Android TV

A lightweight media player for Android TV, optimized for handling external streaming intents from third-party applications.

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](LICENSE)

## Features

- 🔗 **Intent Support** - Handle streams from external applications
- 📺 **Android TV Optimized** - Designed for TV interfaces
- ⚡ **Lightweight** - Minimal APK size with essential features only
- ⚙️ **Pre-configured** - Optimal playback settings out of the box

## Supported Intents

| Intent Type | Action |
|-------------|--------|
| Video URLs | `ACTION_VIEW` |
| Shared URLs | `ACTION_SEND` |
| Custom Schemes | M3U8, RTMP, HTTP |

## Installation

Download the latest APK from [Releases](../../releases) or [Actions](../../actions).

## Compatibility

| Requirement | Version |
|-------------|---------|
| Android | 5.0+ (API 21) |
| Architecture | ARMv7, ARM64 |
| Form Factor | Android TV, TV Box |

## Building

```bash
./gradlew assembleRelease
```

Build artifacts are available via GitHub Actions.

## Technical Details

Default playback configuration:
- Buffer: 4 seconds
- Tunnel Mode: Enabled
- Aspect Ratio: 16:9

## Credits

Built on open-source media player frameworks.
