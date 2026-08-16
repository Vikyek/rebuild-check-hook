# rebuild-check-hook

An Arch Linux pacman post-transaction hook that consolidates `anneal` and `rebuild-detector` (`checkrebuild`) tasks.

## Features

- **Consolidated Output:** Replaces multiple verbose outputs with a single post-transaction check phase.
- **Proactive & Reactive Checks:** Integrates both `anneal` (proactive library tracking) and `checkrebuild` (reactive filesystem auditing).
- **Automated Rebuilding:** Automatically triggers `anneal rebuild --checkrebuild` in a background job once the pacman transaction lock is released, if any packages needing a rebuild are found.
- **Clean Masking:** Automatically masks the default system hooks (`anneal-trigger.hook` and `rebuild-detector.hook`) on install, and restores them on package removal.

## Installation

Built and managed as a standard PKGBUILD package:

```bash
makepkg -si
```
