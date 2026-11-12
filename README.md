# rebuild-check-hook

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Sponsor Vikyek](https://img.shields.io/badge/Sponsor-GitHub-ea4aaa?logo=github-sponsors&logoColor=white)](https://github.com/sponsors/Vikyek)

An Arch Linux pacman post-transaction hook that consolidates `anneal` and `rebuild-detector` (`checkrebuild`) tasks.

---

## 📋 Requirements & Dependencies

- **Operating System:** Arch Linux
- **Package Managers & Tools:**
  - `pacman`
  - `base-devel` (for `makepkg`)
  - `bash` (4.0+)
- **Rebuild Detectors:**
  - `anneal` (proactive library and rebuild tracking)
  - `rebuild-detector` (provides `checkrebuild` for reactive binary auditing)
  - Optional: `paru` AUR helper

Install dependencies on Arch Linux:
```bash
sudo pacman -S pacman base-devel bash
paru -S anneal rebuild-detector
```

---

## 🌟 Features

- **Consolidated Output:** Replaces multiple verbose outputs with a single post-transaction check phase.
- **Proactive & Reactive Checks:** Integrates both `anneal` (proactive library tracking) and `checkrebuild` (reactive filesystem auditing).
- **Automated Rebuilding:** Automatically triggers `anneal rebuild --checkrebuild` in a background job once the pacman transaction lock is released, if any packages needing a rebuild are found.
- **Automated Orphan Cleaning:** Automatically detects and removes orphaned packages using `pacman -Rns --noconfirm` once the lock is released.
- **Clean Masking:** Automatically masks the default system hooks (`anneal-trigger.hook` and `rebuild-detector.hook`) on install, and restores them on package removal.

---

## 🚀 Installation

### Using AUR Helper (paru / yay)
```bash
paru -S rebuild-check-hook
```

### Using Automated Installer Script
```bash
git clone https://github.com/Vikyek/rebuild-check-hook.git
cd rebuild-check-hook
chmod +x install.sh
./install.sh
```

### Manual PKGBUILD Build
```bash
cd rebuild-check-hook
makepkg -si
```

---

## 💻 Usage & Verification

Once installed, the hook runs automatically after any `pacman` or `paru` transaction that installs, upgrades, or removes packages:

```bash
# Upgrade packages - the hook will execute post-transaction
paru -Syu
```

You can also run the rebuild checker manually from the command line:
```bash
# Run manual rebuild detection
rebuild-check

# Run with paru wrapper
paru-wrapper -Syu
```

---

## 💖 Support & Sponsorship

`rebuild-check-hook` is authored and maintained by **[Vikyek](https://github.com/Vikyek)** as an independent open-source project. Everything is 100% open-source, telemetry-free, and public.

<div align="center">


[![Sponsor Vikyek](https://img.shields.io/badge/Sponsor-%E2%9D%A4-ea4aaa?logo=github&style=for-the-badge)](https://github.com/sponsors/Vikyek)
[![Donate on Liberapay](https://img.shields.io/badge/Donate-Liberapay-f6c915?style=for-the-badge&logo=liberapay&logoColor=black)](https://liberapay.com/Vikyek)
[![Donate with Stripe](https://img.shields.io/badge/Donate-Stripe-635BFF?style=for-the-badge&logo=stripe&logoColor=white)](https://profile.stripe.com/@vikyek)

</div>

> ### 🎯 Active Sponsorship Goal: Monthly Living Essentials
> **Target:** **2,710 PLN / ~$680 USD per month** (`630 PLN / week`) — Rent & Essential Utilities  
> Covering basic living essentials directly unlocks dedicated, sustainable full-time independent open-source engineering across Arch Linux packaging and system maintenance tools free from corporate telemetry, ads, or paywalls.

If `rebuild-check-hook` saves you time or prevents broken package library links on Arch Linux, consider supporting ongoing work:

- **GitHub Sponsors**: [github.com/sponsors/Vikyek](https://github.com/sponsors/Vikyek) *(Monthly tiers and one-time tips)*
- **Liberapay**: [liberapay.com/Vikyek](https://liberapay.com/Vikyek) *(0% platform fee recurrent patronage in EUR/USD/PLN)*
- **Direct Stripe Profile**: [profile.stripe.com/@vikyek](https://profile.stripe.com/@vikyek) *(Direct one-time tips & sponsorship)*

Every contribution—monthly or one-time—directly supports active maintenance, hardware testbeds, and new feature development!

---

## 📄 License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
