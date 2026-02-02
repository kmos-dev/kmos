import adapter from '@sveltejs/adapter-static';

/** @type {import('@sveltejs/kit').Config} */
const config = {
	kit: {
		// adapter-static for GitHub Pages deployment
		adapter: adapter({
			// Build a fallback page for SPA mode (all routes serve index.html)
			fallback: 'index.html',
			
			// GitHub Pages requires the site to be at the root or in docs folder
			pages: 'build',
			assets: 'build',
			fallback: undefined,
			precompress: false,
			strict: true
		}),
		
		// Prerender all pages for static generation
		prerender: {
			handleHttpError: 'warn'
		}
	}
};

export default config;
