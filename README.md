# Sellsuki AMS — Authentication Management System

Auth flow UI สำหรับ Sellsuki ที่ใช้ **Sellsuki Design System** (`@uxuissk/design-system`) อย่างเต็มรูปแบบ

---

## 🚀 Getting Started

```bash
# 1. Install dependencies
npm install

# 2. Start dev server
npm run dev

# 3. Open browser
# http://localhost:5173
```

---

## 📁 Project Structure

```
sellsuki-ams/
├── public/
│   └── Sellsuki_Logo.png        # Official Sellsuki logo (88×88)
├── src/
│   ├── assets/                  # Static assets
│   ├── components/
│   │   └── SocialButton.tsx     # Google / Facebook / Line button
│   ├── pages/
│   │   └── AuthPage.tsx         # Main auth page (all 8 screens)
│   ├── types/
│   │   └── auth.ts              # TypeScript types
│   ├── App.tsx                  # Root component + ToastContainer
│   ├── main.tsx                 # Entry point — imports DS CSS first
│   └── index.css                # Global styles + DS token overrides
├── index.html
├── package.json
├── tsconfig.json
├── vite.config.ts
├── DESIGN_SYSTEM_LOG.md         # DS component & token audit log
└── README.md
```

---

## 📱 Auth Screens

| Screen | Trigger | Description |
|--------|---------|-------------|
| **Sign In** (Email) | Default | กรอก email → route to password or sign-up |
| **Sign In** (Password) | Existing email | Password input + showPasswordToggle |
| **Sign Up** | New email | ชื่อ + นามสกุล form |
| **Email Verify** | After sign-up | Envelope icon + 60s resend countdown |
| **Forgot Password** | "ลืมรหัสผ่าน?" link | Email input → reset |
| **Forgot Sent** | After forgot submit | Success confirmation |
| **Social Confirm** | Social login button | OAuth provider confirmation |
| **Profile** | After login | User info + logout button |

---

## 🎨 Design System

ทุก UI element ใช้ **Sellsuki Design System** ตามมาตรฐาน:

```tsx
// ✅ Import DS CSS first (required)
import '@uxuissk/design-system/styles.css'

// ✅ Import components
import { DSButton, DSInput, Divider, Avatar, ConfirmDialog, ToastContainer } from '@uxuissk/design-system'
```

### DS Components Used

| Component | Variant/Props | Used In |
|-----------|--------------|---------|
| `DSButton` | `primary`, `outline`, `solid_light`, `destructive` | All screens |
| `DSInput` | `inputSize="lg"`, `showPasswordToggle`, `required` | Form fields |
| `Divider` | `label="หรือ"` | Sign-in screen |
| `Avatar` | `size="xl"` | Social confirm, Profile |
| `ConfirmDialog` | `variant="destructive"` | Logout modal |
| `ToastContainer` | — | Global (App.tsx) |

See [`DESIGN_SYSTEM_LOG.md`](./DESIGN_SYSTEM_LOG.md) for full audit.

### DS Resources

- **Storybook:** https://sellsukidesignsystemv12.vercel.app
- **Preview:** https://sellsukidesignsystemv12-2bee.vercel.app
- **Figma DS:** https://www.figma.com/design/GhT0HmOM9vlRZ8hWVZyhm7/Design-System-Components

---

## 🧪 Test Accounts

| Email | Type | Behaviour |
|-------|------|-----------|
| `hello@sellsuki.com` | Existing user | → Password screen |
| `test@sellsuki.com` | Existing user | → Password screen |
| Any other email | New user | → Sign-up screen |

Password: any non-empty value (mock — replace with real API)

---

## 🔧 Tech Stack

| Tool | Version |
|------|---------|
| React | ^18.3 |
| TypeScript | ^5.4 |
| Vite | ^5.3 |
| @uxuissk/design-system | latest |
| lucide-react | ^0.383 |

---

## 📋 DS Compliance

| Rule | Status |
|------|--------|
| `@uxuissk/design-system/styles.css` imported first | ✅ |
| DB HeaventRounded / Sarabun for text | ✅ |
| Inter for buttons | ✅ |
| Sky-500 `#32a9ff` as primary action | ✅ |
| `elevation-sm` only (no heavy shadows) | ✅ |
| `radius-md` (8px) as default | ✅ |
| No custom form components | ✅ |
| 1 primary button per view | ✅ |
| Disabled primary = Sky-200 muted blue | ✅ |
| Responsive (mobile + desktop) | ✅ |
