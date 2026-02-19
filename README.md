# Android TV Player

Minimalist media player for Android TV devices, optimized for external stream handling via Android Intent.

## Features

- **Intent Support** - Open streams from external applications
- **v7a Architecture** - Compatible with 32-bit and 64-bit devices
- **Lightweight** - Reduced APK size with unnecessary features removed
- **Pre-configured** - Optimal settings out of the box

## Removed Features

The following features were removed to reduce size:
- Cast/DLNA
- TV Guide (EPG)
- External subtitles (.srt, .ass)
- P2P protocols
- Unused language resources

## Default Settings

```
Buffer: 4 seconds
Tunnel Mode: ON
Scale: 16:9
Background Play: OFF
```

## Installation

Download APK from [Actions](../../actions) and install on your device.

## Compatibility

- Android 5.0+
- TV Boxes
- Android TV devices
- 32-bit and 64-bit architectures

## Building

Build is triggered manually via Actions.

## Credits

Based on open-source media player projects.
