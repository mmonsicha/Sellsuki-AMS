# Sellsuki AMS — Auth UI

Sellsuki Authentication Management System — auth flow UI built with **Sellsuki Design System**.

## Screens

| Screen | Description |
|--------|-------------|
| Sign In (Email) | Email input → routes to password or sign-up |
| Sign In (Password) | Password input with show/hide toggle |
| Sign Up | First name + last name form |
| Email Verify | Envelope icon + resend countdown |
| Forgot Password | Email input → reset |
| Forgot Sent | Success confirmation |
| Social Confirm | OAuth provider confirmation |
| Profile | Logged-in state + logout |

## Design System

All UI follows **Sellsuki Design System** (`@uxuissk/design-system`).

See [`DESIGN_SYSTEM_LOG.md`](./DESIGN_SYSTEM_LOG.md) for full component and token audit log.

- **Storybook:** https://sellsukidesignsystemv12.vercel.app
- **Figma DS:** https://www.figma.com/design/GhT0HmOM9vlRZ8hWVZyhm7/Design-System-Components

## Tech Stack

- Pure HTML/CSS/JS (no framework dependency)
- DS tokens implemented as CSS custom properties
- Fonts: DB HeaventRounded / Sarabun (heading/body), Inter (buttons)
- Responsive: mobile-first, `clamp()` fluid typography/spacing

## Usage

Open `index.html` directly in browser — no build step required.

**Test accounts:**
- `hello@sellsuki.com` → existing user (goes to password screen)  
- `test@sellsuki.com` → existing user  
- Any other email → new user (goes to sign-up)
