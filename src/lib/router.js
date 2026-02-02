import { writable, derived } from 'svelte/store';

// Current route store
export const currentPath = writable(window.location.pathname);

// Navigate to a new path
export function navigate(path) {
  window.history.pushState({}, '', path);
  currentPath.set(path);
  window.scrollTo(0, 0);
}

// Handle browser back/forward buttons
window.addEventListener('popstate', () => {
  currentPath.set(window.location.pathname);
});

// Intercept link clicks for client-side navigation
document.addEventListener('click', (e) => {
  const link = e.target.closest('a');
  if (!link) return;
  
  const href = link.getAttribute('href');
  if (!href || href.startsWith('http') || href.startsWith('//')) return;
  
  e.preventDefault();
  navigate(href);
});

// Route matching utility
export function matchRoute(path, pattern) {
  if (pattern === '*') return true;
  if (pattern === path) return true;
  
  // Handle dynamic routes like /school-portal
  const patternParts = pattern.split('/');
  const pathParts = path.split('/');
  
  if (patternParts.length !== pathParts.length) return false;
  
  return patternParts.every((part, i) => {
    return part.startsWith(':') || part === pathParts[i];
  });
}