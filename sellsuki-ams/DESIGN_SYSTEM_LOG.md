# Sellsuki Auth — Design System Audit Log

> **File:** `index.html` (Sellsuki Auth UI)  
> **Audited by:** `/sellsuki-ux-designer` via Sellsuki Design System MCP  
> **Date:** 2025-03-29  
> **DS Package:** `@uxuissk/design-system`  
> **Storybook:** https://sellsukidesignsystemv12.vercel.app  

---

## ✅ Compliance Status: PASS

All UI elements have been verified and updated to use Sellsuki Design System tokens and component patterns.

---

## 🔧 Fixes Applied in This Audit

| # | Issue | Before | After | Rule |
|---|-------|--------|-------|------|
| 1 | Page background | `#f0f4f8` (custom) | `#f9fafb` (Gray-50, `--bg-page`) | DS `--background` light = Gray-50 |
| 2 | Card elevation | `elevation-md` (custom) | `elevation-sm` only | DS: only `elevation-sm` exists |
| 3 | Logo | Inline SVG (custom) | `Sellsuki_Logo.png` (official asset) | Brand identity |
| 4 | Button disabled color | Gray (`#e5e7eb`) | Sky-200 (`#bae6fd`) muted blue | DS: disabled primary = muted brand |

---

## 📦 DS Components Used

### Form Controls

#### `DSButton`
| Variant | Screen | Element | CSS Class |
|---------|--------|---------|-----------|
| `primary` | Sign In | "ต่อไป" button (active) | `.ds-btn-primary` |
| `primary` | Password | "เข้าสู่ระบบ" button | `.ds-btn-primary` |
| `primary` | Sign Up | "ต่อไป" button | `.ds-btn-primary` |
| `primary` | Verify | "ส่งอีกครั้ง" button | `.ds-btn-primary` |
| `primary` | Forgot PW | "รีเซ็ตรหัสผ่าน" button | `.ds-btn-primary` |
| `primary` | Forgot Sent | "กลับหน้าเข้าสู่ระบบ" | `.ds-btn-primary` |
| `primary` (disabled) | Sign In | "ต่อไป" (before valid email) | `.ds-btn-primary.ds-btn-disabled` |
| `primary` (disabled) | Password | "เข้าสู่ระบบ" (before password) | `.ds-btn-primary.ds-btn-disabled` |
| `primary` (disabled) | Verify | "ส่งอีกครั้ง" (countdown) | `.ds-btn-primary.ds-btn-disabled` |
| `outline` | Social confirm | "ยกเลิก" button | `.ds-btn-outline` |
| `outline` | Logout modal | "ยกเลิก" button | `.ds-btn-outline` |
| `solid_light` | Sign In | Google / Facebook / Line social login | `.ds-btn-solid-light` |
| `destructive` | Profile | "ออกจากระบบ" button | `.ds-btn-destructive` |
| `destructive` | Logout modal | "ออกจากระบบ" confirm | `.ds-btn-destructive` |
| `ghost` (link) | All screens | "ลืมรหัสผ่าน?", "สมัครด้วยอีเมลอื่น" | `.ds-link` |

**Props used:** `size=lg` (40px height), `fullWidth=true`, `disabled`, `leftIcon`

---

#### `DSInput`
| Variant | Screen | Element | Props |
|---------|--------|---------|-------|
| `default` | Sign In | อีเมล field | `type=email`, `placeholder` |
| `default` + `showPasswordToggle` | Password | รหัสผ่าน field | `type=password`, eye icon suffix |
| `default` | Sign Up | ชื่อ field | `type=text` |
| `default` | Sign Up | นามสกุล field | `type=text` |
| `default` | Forgot PW | อีเมล field | `type=email` |

**Props:** `inputSize=lg` (40px), `variant=default`, focus ring = Sky-500 3px, border-radius = `radius-md` (8px)

---

#### `FormField`
Wrapper pattern applied to all input fields across all screens.

| Screen | Fields Wrapped |
|--------|---------------|
| Sign In (email) | อีเมล |
| Password | รหัสผ่าน |
| Sign Up | ชื่อ, นามสกุล |
| Forgot PW | อีเมล |

**Structure:** `FormField > FormLabel + DSInput`  
**Gap between fields:** `--space-16` (16px) ✅ DS form field gap

---

### Layout

#### `Divider`
| Screen | Usage | Props |
|--------|-------|-------|
| Sign In | Between email form and social login section | `label="หรือ"`, `orientation=horizontal` |

---

#### `Card` (custom implementation following DS pattern)
| Screen | Props |
|--------|-------|
| All screens | `elevation=sm`, `bordered=true`, `border-radius=radius-xl (16px)` |

---

### Data Display

#### `Avatar`
| Size | Screen | Usage |
|------|--------|-------|
| `xl` (80px) | Social confirm | Provider account initials avatar |
| `xl` (80px) | Profile | Logged-in user initials avatar |

**Props:** `name` (for initials fallback), gradient bg = Sky-500 → Sky-400

---

### Feedback

#### `Modal` / `ConfirmDialog`
| Screen | Usage | Props |
|--------|-------|-------|
| Profile → Logout | Logout confirmation dialog | `variant=destructive`, `size=sm`, `closeOnOverlay=true` |

**Button group inside:** `outline` (cancel) + `destructive` (confirm) ✅ DS ButtonGroup pattern

---

## 🎨 Design Tokens Used

### Color Tokens

| Token | Value | Used In |
|-------|-------|---------|
| `bg-page` / `--background` | `#f9fafb` (Gray-50) | Page background |
| `bg-primary` | `#ffffff` | Card background, input background |
| `bg-secondary` | `#f3f4f6` (Gray-100) | Info tiles (Profile screen) |
| `bg-primary-hover` | `#f9fafb` (Gray-50) | Button outline hover, solid_light hover |
| `bg-brand-solid` | `#32a9ff` (Sky-500) | Primary button background |
| `bg-brand-solid-hover` | `#1b8bf5` (Sky-600) | Primary button hover |
| `bg-brand-primary` | `#f0f9ff` (Sky-50) | Ghost button hover background |
| `bg-disabled` | `#bae6fd` (Sky-200) | Primary button disabled state |
| `bg-danger-solid` | `#e11d48` (Rose-600) | Destructive button |
| `bg-danger-solid-hover` | `#be123c` (Rose-700) | Destructive button hover |
| `text-primary` | `#1f2937` (Gray-800) | Main text, titles, labels |
| `text-secondary` | `#6b7280` (Gray-500) | Subtitles, captions, helper text |
| `text-placeholder` | `#9ca3af` (Gray-400) | Input placeholder text |
| `text-white` | `#ffffff` | Button labels on colored backgrounds |
| `text-link` / `Link` | `#1b8bf5` (Sky-600) | All link elements, DS link pattern |
| `stroke-primary` | `#e5e7eb` (Gray-200) | Input border, card border, divider line |
| `stroke-secondary` | `#d1d5db` (Gray-300) | Outline button hover border |
| `stroke-focus` / `stroke-brand` | `#32a9ff` (Sky-500) | Input focus border |
| `stroke-danger` | `#e11d48` (Rose-600) | Logout modal icon stroke |
| Rose-50 | `#fff1f2` | Logout modal icon background |
| Emerald-50 | `#ecfdf5` | Email sent success icon background |
| Amber/Yellow | `#FEF3C7` / `#F59E0B` | Email verify icon |

---

### Typography Tokens

| Token | Size | Weight | Font | Used In |
|-------|------|--------|------|---------|
| `--text-h3` | 28px | 700 | DB HeaventRounded / Sarabun | All card titles (`.ds-h3`) |
| `--text-p` | 16px | 400 | DB HeaventRounded / Sarabun | Body text, input text, subtitles |
| `--text-caption` | 14px | 400 | DB HeaventRounded / Sarabun | Helper text, captions, back button |
| `--text-label` | 14px | 400 | DB HeaventRounded / Sarabun | Form field labels |
| `--text-button` | 14px | 600 | **Inter** | All button labels |

---

### Spacing Tokens

| Token | Value | Used In |
|-------|-------|---------|
| `--space-4` | 4px | Label gap, logo margin-bottom, forgot link margin |
| `--space-8` | 8px | Card header gap, button icon gap, actions margin-top |
| `--space-12` | 12px | Action button gap, social button gap, modal element gap |
| `--space-16` | 16px | Form field gap ✅, page padding (mobile), footer margin |
| `--space-20` | 20px | Divider margin, social confirm actions margin |
| `--space-24` | 24px | Auth shell padding (desktop), action stack gap |
| `--space-32` | 32px | Card header margin-bottom, modal vertical padding |
| `--space-40` | 40px | Card padding |

---

### Border Radius Tokens

| Token | Value | Used In |
|-------|-------|---------|
| `radius-sm` | 6px | Password eye button, input-suffix hover |
| `radius-md` | **8px** (DEFAULT) | All inputs, all buttons, info tiles |
| `radius-xl` | 16px | Auth card, logout modal |
| `radius-full` | 9999px | Avatar, modal icon circle |

---

### Elevation Tokens

| Token | Value | Used In |
|-------|-------|---------|
| `elevation-sm` | `0px 1px 2px 0px rgba(0,0,0,.05)` | Auth card ✅ (only allowed shadow) |

> ⚠️ **DS Rule:** Only `elevation-sm` is permitted. Heavy shadows are NOT allowed.  
> Previous version incorrectly used `elevation-md` — **fixed in this audit**.

---

## 🖼️ Logo

| Property | Value |
|----------|-------|
| File | `Sellsuki_Logo.png` |
| Size | 80×80px |
| Format | PNG (official brand asset) |
| Embedding | Base64 data URI (self-contained) |
| Screens | All 8 screens (Sign In email, Password, Sign Up, Forgot PW, + cloned via template) |

---

## 📋 Screen → Component Mapping

| Screen ID | Screen Name | DS Components Used |
|-----------|-------------|-------------------|
| `screen-signin` | Sign In — Email | DSInput (email), DSButton (primary disabled→active), DSButton (solid_light ×3), Divider, FormField |
| `screen-password` | Sign In — Password | DSInput (password + showPasswordToggle), DSButton (primary disabled→active), ds-link (forgot) |
| `screen-signup-name` | Sign Up — Name | DSInput ×2 (text), FormField ×2, DSButton (primary disabled→active) |
| `screen-verify` | Email Verify | DSButton (primary disabled + countdown), custom envelope SVG icon |
| `screen-forgot` | Forgot Password | DSInput (email), FormField, DSButton (primary disabled→active), back-btn (ghost) |
| `screen-forgot-sent` | Forgot — Sent | DSButton (primary), custom success SVG icon, ds-link |
| `screen-social-cb` | Social Confirm | Avatar (xl), DSButton (primary + outline) |
| `screen-profile` | Profile (Logged in) | Avatar (xl), info tiles (bg-secondary), DSButton (destructive) |
| Logout modal | ConfirmDialog | Modal backdrop, DSButton (outline + destructive) |

---

## 🚫 DS Rules Followed

| Rule | Status |
|------|--------|
| Always use semantic color tokens, not raw hex | ✅ All colors via CSS variables |
| Use DS font: DB HeaventRounded (heading/body), Inter (button) | ✅ Both fonts loaded |
| Use radius-md (8px) as default | ✅ All inputs and buttons use radius-md |
| Use elevation-sm sparingly — prefer flat design | ✅ Only elevation-sm used |
| Use Sky-500 (#32a9ff) as primary action color | ✅ |
| Use Gray-800 (#1f2937) as primary text color | ✅ |
| Use Gray-500 (#6b7280) as secondary text color | ✅ |
| No more than 1 primary button per view | ✅ |
| Form field gap = 16px | ✅ `--space-16` |
| Don't create custom form components | ✅ Uses DSInput, DSButton patterns |
| Support mobile responsiveness | ✅ `clamp()` values, media queries |
| Disabled primary button = muted sky (Sky-200) | ✅ Fixed from Gray-200 |

---

*Generated by `/sellsuki-ux-designer` · Sellsuki Design System MCP · 2025-03-29*
