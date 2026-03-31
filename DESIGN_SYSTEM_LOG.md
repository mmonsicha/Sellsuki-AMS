# Sellsuki Auth — Design System Audit Log

> **Project:** Sellsuki AMS (Authentication Management System)
> **Audited by:** `/sellsuki-ux-designer` via Sellsuki Design System MCP
> **Date:** 2025-03-30
> **DS Package:** `@uxuissk/design-system`
> **Storybook:** https://sellsukidesignsystemv12.vercel.app

---

## ✅ Compliance Status: PASS

All UI elements use Sellsuki Design System components, tokens, and patterns.

---

## 📦 Components Used

### `DSButton` — Form Controls

| Screen | Element | Variant | Size | Notes |
|--------|---------|---------|------|-------|
| Sign In | "ต่อไป" | `primary` | `lg` | disabled until valid email |
| Sign In | Social buttons ×3 | `solid_light` | `lg` | Google / Facebook / Line |
| Password | "เข้าสู่ระบบ" | `primary` | `lg` | disabled until password entered |
| Sign Up | "ต่อไป" | `primary` | `lg` | disabled until ชื่อ + นามสกุล filled |
| Email Verify | "ส่งอีกครั้ง" | `primary` | `lg` | disabled during 60s countdown |
| Forgot PW | "รีเซ็ตรหัสผ่าน" | `primary` | `lg` | disabled until valid email |
| Forgot Sent | "กลับหน้าเข้าสู่ระบบ" | `primary` | `lg` | — |
| Social Confirm | "ยืนยัน เข้าสู่ระบบ" | `primary` | `lg` | — |
| Social Confirm | "ยกเลิก" | `outline` | `lg` | — |
| Profile | "ออกจากระบบ" | `destructive` | `lg` | opens ConfirmDialog |
| Logout Modal | "ออกจากระบบ" | `destructive` | `md` | via ConfirmDialog |
| Logout Modal | "ยกเลิก" | `outline` | `md` | via ConfirmDialog |

**Rule applied:** 1 primary button per view ✅

---

### `DSInput` — Form Controls

| Screen | Field | Type | Props |
|--------|-------|------|-------|
| Sign In | อีเมล | `email` | `inputSize="lg"`, `fullWidth` |
| Password | รหัสผ่าน | `password` | `inputSize="lg"`, `showPasswordToggle`, `fullWidth` |
| Sign Up | ชื่อ | `text` | `inputSize="lg"`, `required`, `fullWidth` |
| Sign Up | นามสกุล | `text` | `inputSize="lg"`, `required`, `fullWidth` |
| Forgot PW | อีเมล | `email` | `inputSize="lg"`, `fullWidth` |

**Size used:** `lg` (40px height) for auth readability ✅

---

### `Divider` — Layout

| Screen | Usage | Props |
|--------|-------|-------|
| Sign In | Between email form and social login section | `label="หรือ"` |

---

### `Avatar` — Data Display

| Screen | Size | Props | Usage |
|--------|------|-------|-------|
| Social Confirm | `xl` (80px) | `name={socialUser.name}` | Initials fallback from provider account |
| Profile | `xl` (80px) | `name={loggedInUser.name}` | Logged-in user initials |

**Pattern:** `name` prop → automatic initials fallback ✅

---

### `ConfirmDialog` — Feedback

| Screen | Props |
|--------|-------|
| Logout | `variant="destructive"`, `title`, `message`, `confirmText="ออกจากระบบ"`, `cancelText="ยกเลิก"` |

**Rule applied:** ConfirmDialog used for destructive action (not custom modal) ✅

---

### `ToastContainer` — Feedback

Placed globally in `App.tsx`. Ready for `toast.success()` / `toast.error()` calls. ✅

---

## 🎨 Design Tokens Used

### Color Tokens

| Token | Hex | Used In |
|-------|-----|---------|
| `bg-page` / `--background` | `#f9fafb` Gray-50 | Page background (`body`, `.auth-bg`) |
| `bg-primary` | `#ffffff` | Card, input backgrounds |
| `bg-secondary` | `#f3f4f6` Gray-100 | Info tiles on Profile screen |
| `bg-primary-hover` | `#f9fafb` | Button outline/solid_light hover |
| `bg-brand-solid` | `#32a9ff` Sky-500 | Primary button background |
| `bg-brand-solid-hover` | `#1b8bf5` Sky-600 | Primary button hover |
| `bg-brand-primary` | `#f0f9ff` Sky-50 | Ghost button hover bg |
| `bg-disabled` (Sky-200) | `#bae6fd` | Primary button disabled ✅ |
| `bg-danger-solid` | `#e11d48` Rose-600 | Destructive button |
| `bg-danger-solid-hover` | `#be123c` Rose-700 | Destructive hover |
| `text-primary` | `#1f2937` Gray-800 | All primary text |
| `text-secondary` | `#6b7280` Gray-500 | Subtitles, captions, labels |
| `text-placeholder` | `#9ca3af` Gray-400 | Input placeholders |
| `text-white` | `#ffffff` | Button text on colored backgrounds |
| `Link` / `text-link` | `#1b8bf5` Sky-600 | All `<a>` links, `.ds-link` |
| `stroke-primary` | `#e5e7eb` Gray-200 | Input borders, card border |
| `stroke-secondary` | `#d1d5db` Gray-300 | Outline button hover border |
| `stroke-focus` | `#32a9ff` Sky-500 | Input focus ring |
| `stroke-danger` | `#e11d48` Rose-600 | ConfirmDialog icon stroke |
| Rose-50 | `#fff1f2` | ConfirmDialog icon background |
| Emerald-50 | `#ecfdf5` | Forgot-sent success icon bg |
| Amber / `#FEF3C7` | — | Email verify envelope icon bg |
| Amber-500 `#F59E0B` | — | Email verify envelope fill |

---

### Typography Tokens

| Token | Size | Weight | Font | Used In |
|-------|------|--------|------|---------|
| `--text-h3` | 28px | 700 | Sarabun / DB HeaventRounded | `.auth-title` (all card titles) |
| `--text-p` | 16px | 400 | Sarabun / DB HeaventRounded | Body text, subtitles, input text |
| `--text-caption` | 14px | 400 | Sarabun / DB HeaventRounded | Helper text, email chip, back btn |
| `--text-label` | 14px | 400 | Sarabun / DB HeaventRounded | `.auth-footer`, info tile labels |
| `--text-button` | 14px | 600 | **Inter** ✅ | All `DSButton` labels |

---

### Spacing Tokens

| Token | Value | Used In |
|-------|-------|---------|
| `--space-4` | 4px | Label gap, logo margin, forgot link |
| `--space-8` | 8px | Card header gap, button icon gap |
| `--space-12` | 12px | Auth actions gap, social group gap |
| `--space-16` | 16px | DS form field gap ✅, page padding mobile |
| `--space-20` | 20px | Divider margin-top, social confirm actions |
| `--space-24` | 24px | Auth shell padding desktop |
| `--space-32` | 32px | Card header margin-bottom |
| `--space-40` | 40px | Card padding |

---

### Border Radius Tokens

| Token | Value | Used In |
|-------|-------|---------|
| `radius-md` | **8px** (DEFAULT) | DSInput, DSButton (via DS component) |
| `radius-xl` | 16px | `.auth-card`, ConfirmDialog |
| `radius-full` | 9999px | Avatar (via DS component) |

---

### Elevation Tokens

| Token | Value | Used In |
|-------|-------|---------|
| `elevation-sm` | `0px 1px 2px 0px rgba(0,0,0,.05)` | `.auth-card` ✅ |

> **DS Rule:** Only `elevation-sm` is permitted. Heavy shadows are NOT used. ✅

---

## 📋 Screen → File Mapping

| Screen | Component | File |
|--------|-----------|------|
| Sign In (Email) | `AuthPage` | `src/pages/AuthPage.tsx` |
| Sign In (Password) | `AuthPage` | `src/pages/AuthPage.tsx` |
| Sign Up | `AuthPage` | `src/pages/AuthPage.tsx` |
| Email Verify | `AuthPage` | `src/pages/AuthPage.tsx` |
| Forgot Password | `AuthPage` | `src/pages/AuthPage.tsx` |
| Forgot Sent | `AuthPage` | `src/pages/AuthPage.tsx` |
| Social Confirm | `AuthPage` | `src/pages/AuthPage.tsx` |
| Profile | `AuthPage` | `src/pages/AuthPage.tsx` |
| Social buttons | `SocialButton` | `src/components/SocialButton.tsx` |
| Auth types | TypeScript | `src/types/auth.ts` |

---

## 🚫 DS Rules Compliance

| Rule | Status |
|------|--------|
| Import `@uxuissk/design-system/styles.css` first | ✅ `src/main.tsx` |
| Use DS components — no custom buttons/inputs | ✅ `DSButton`, `DSInput` used |
| Semantic color tokens only — no raw hex in logic | ✅ |
| DB HeaventRounded / Sarabun for text | ✅ |
| Inter for buttons | ✅ via DS component |
| `radius-md` (8px) as default | ✅ via DS component |
| `elevation-sm` only | ✅ |
| Sky-500 `#32a9ff` as primary action | ✅ |
| Gray-800 `#1f2937` as primary text | ✅ |
| Gray-500 `#6b7280` as secondary text | ✅ |
| Max 1 primary button per view | ✅ |
| Form field gap = 16px | ✅ `.auth-fields { gap: 16px }` |
| Disabled primary = Sky-200 muted blue | ✅ |
| Mobile responsive | ✅ `clamp()`, media queries |
| No heavy decorative shadows | ✅ |

---

*Generated by `/sellsuki-ux-designer` · Sellsuki Design System MCP · 2025-03-30*
