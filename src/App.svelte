<script>
  import './global.css';
  import { currentPath, matchRoute } from './lib/router.js';
  import Navbar from './components/Navbar.svelte';
  import Footer from './components/Footer.svelte';
  import Home from './pages/Home.svelte';
  import Portals from './pages/Portals.svelte';

  $: currentPage = $currentPath;
</script>

<div class="app-container">
  <Navbar />
  <main class="main-content">
    {#if matchRoute(currentPage, '/')}
      <Home />
    {:else if matchRoute(currentPage, '/portals')}
      <Portals />
    {:else}
      <Home />
    {/if}
  </main>
  <Footer />
</div>

<style>
  :global(*) {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
  }

  :global(body) {
    font-family: 'Arial Black', 'Helvetica Neue', sans-serif;
    background-color: #ffffff;
    color: #000000;
    line-height: 1.4;
  }

  .app-container {
    display: flex;
    flex-direction: column;
    min-height: 100vh;
  }

  .main-content {
    flex: 1;
  }
</style>