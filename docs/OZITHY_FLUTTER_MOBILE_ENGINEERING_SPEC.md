# Ozithy Flutter Mobile App Engineering Specification

**Status:** Baseline for implementation (locked with package-selection rules)  
**Client role:** First-class Android/iOS buyer client of the Ozithy PPP Laravel backend — not a website wrapper.

## Objective

Build a production-grade, API-driven ecommerce app that delivers a fast, reliable shopping experience on Android and iOS while keeping the existing Ozithy PPP backend as the single source of business logic and data.

## Five priorities

1. Maintainable Flutter architecture  
2. Excellent shopping and checkout experiences  
3. Secure authentication and payment processing  
4. Performance, reliability, and offline resilience  
5. Proper Android and Apple App Store compliance  

## Package selection (mandatory)

1. **Latest stable only** — Verify every package version on [pub.dev](https://pub.dev) before adding.  
2. **Widely adopted / battle-tested** — Prefer libraries standard across notable tech stacks; avoid obscure/niche alternatives.  
3. **Lean** — Do not add packages beyond what the current phase needs. Recommendations below are not mandatory installs.

## Recommended technology baseline

| Area | Recommendation | Purpose |
| --- | --- | --- |
| Framework | Flutter + Dart | One codebase for Android and iOS |
| Architecture | Feature-first MVVM | Maintainable structure |
| State management | Riverpod | Shared and feature state |
| Navigation | go_router | Routes, deep links, guards |
| API | Dio | HTTP, interceptors, errors |
| Models | Freezed + json_serializable | Immutable models / JSON |
| Secure storage | flutter_secure_storage | Tokens and secrets |
| Local DB | Drift or SQLite | Structured cache when needed |
| Images | cached_network_image | Product image caching |
| Connectivity | connectivity_plus | Network awareness |
| Push | Firebase Cloud Messaging | Order / promo notifications |
| Crashes | Firebase Crashlytics | Production monitoring |
| Analytics | Firebase Analytics | Funnel measurement |

## Architecture rules

- Screens must not call APIs directly.  
- Widgets must not contain business logic.  
- ViewModels own screen state and interactions.  
- Repositories own data access, caching, and recovery.  
- API services own HTTP.  
- Domain/use-case layer only when complexity justifies it.  
- Dependency injection — no global service singletons.  

### Folder layout

```
lib/
├── app/          # app.dart, router, theme, config
├── core/         # api, auth, errors, network, storage, widgets, utils
├── features/     # authentication, home, catalog, categories, product_details,
│                 # visual_search, cart, checkout, orders, wishlist, addresses,
│                 # notifications, profile, support
└── main.dart
```

Each feature: `data/` (api, repository, models) + `presentation/` (screen, view_model, components).

## Backend integration (non-negotiable)

- Flutter is a **client** of PPP buyer APIs.  
- Never connect to MySQL or Qdrant.  
- Never embed DB credentials, Paystack secrets, or server secrets.  
- Reuse buyer-facing endpoints; same product IDs, prices, inventory, order statuses as web.  
- Backend is authoritative for totals, shipping fees, and payment status.  
- Physical goods → Paystack (or similar) via backend create/verify — **not** Apple IAP.  
- One marketplace, multiple clients (web + Flutter).  

## Phased delivery

1. **Foundation** — project, architecture, design system, API, navigation, auth, env  
2. **Shopping** — home, categories, catalogue, PDP, search, variations, wishlist, cart  
3. **Transactions** — checkout, delivery fees, Paystack, orders  
4. **Advanced** — visual search (via Laravel/VIS APIs), push, recommendations, deep links, support  
5. **Production** — tests, performance, security, analytics, store submission  

## Design

Mobile-native layouts with Ozithy visual identity (colors, typography, spacing, product presentation). Do not shrink the website UI into a WebView.

## Security, testing, stores

Follow the full standards in the product brief: secure token storage, HTTPS, no secrets in logs, unit/widget/integration tests, Play AAB + App Store / TestFlight readiness, env separation, CI, pinned Flutter SDK.
