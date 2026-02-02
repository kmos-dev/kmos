# KMOS Collective Landing Page

A Neo-Brutalist style website for KMOS Collective, a software collective building institutional management systems.

## Design System

The site features a bold neo-brutalist design with:
- **Colors**: White, Black, and Bright Navy Blue (#0033cc)
- **Typography**: Heavy sans-serif fonts (Arial Black, Helvetica Neue)
- **Borders**: Thick 4px borders with sharp corners
- **Shadows**: Hard drop shadows (6px-8px offset)
- **Layout**: Asymmetrical layouts with strong visual hierarchy

## Pages

- **Home**: Hero statement, collective description, product overview
- **Portals**: Overview of School Portal and College Portal
- **School Portal**: Detailed K-12 management system information
- **College Portal**: Detailed higher education management system information

## Installation & Development

### Prerequisites
- [Bun](https://bun.sh/) runtime

### Install Dependencies
```bash
bun install
```

### Development Server
```bash
bun run dev
```

### Build for Production
```bash
bun run build
```

### Preview Production Build
```bash
bun run preview
```

## Project Structure

```
src/
├── App.svelte              # Main app with router
├── main.js                 # Entry point
├── global.css              # Neo-brutalist design system
├── components/
│   ├── Navbar.svelte       # Navigation component
│   ├── Footer.svelte       # Footer component
│   ├── Button.svelte       # Reusable button component
│   ├── Hero.svelte         # Hero section component
│   ├── Card.svelte         # Card component
│   ├── Pricing.svelte      # Pricing card component
│   └── Section.svelte      # Section wrapper component
└── pages/
    ├── Home.svelte         # Homepage
    ├── Portals.svelte      # Portals overview
    ├── SchoolPortal.svelte # School portal details
    └── CollegePortal.svelte # College portal details
```

## Deployment

### GitHub Pages

The project is configured for GitHub Pages deployment. The workflow automatically builds and deploys on push to the main branch.

To enable GitHub Pages:
1. Go to repository Settings > Pages
2. Set Source to "GitHub Actions"
3. Push to main branch to trigger deployment

### Manual Deployment

Build the project and deploy the `dist` folder to your hosting service.

## Features

- **Responsive Design**: Desktop-first with full mobile support
- **SPA Routing**: Lightweight client-side routing with svelte-navigator
- **Component-Based**: Reusable Svelte components
- **Neo-Brutalist Aesthetic**: Bold, high-contrast design throughout
- **Production Ready**: Optimized build with Vite

## License

© 2026 KMOS Collective. All rights reserved.