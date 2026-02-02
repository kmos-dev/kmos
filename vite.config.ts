import { svelte } from '@sveltejs/vite-plugin-svelte';
import { defineConfig } from 'vite';

export default defineConfig({
  plugins: [svelte()],
  base: '/kmos/',
  build: {
    outDir: 'dist',
    assetsDir: 'assets'
  },
  appType: 'spa'
});