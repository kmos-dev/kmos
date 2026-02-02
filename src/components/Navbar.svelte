<script>
  import { navigate } from '../lib/router.js';

  function handleNavigate(path) {
    return (e) => {
      e.preventDefault();
      navigate(path);
    };
  }
</script>

<nav class="navbar">
  <div class="container">
    <div class="navbar-content">
      <a href="/" class="navbar-brand" onclick={handleNavigate('/')}>
        <span class="brand-text">KMOS</span>
        <span class="brand-sub">COLLECTIVE</span>
      </a>
      <div class="navbar-links">
        <a href="/" class="nav-link" onclick={handleNavigate('/')}>Home</a>
        <a href="/portals" class="nav-link" onclick={handleNavigate('/portals')}>Portals</a>
      </div>
    </div>
  </div>
</nav>

<style>
  .navbar {
    border-bottom: 4px solid #000000;
    background-color: #ffffff;
    padding: 1.25rem 0;
    position: sticky;
    top: 0;
    z-index: 1000;
  }

  .navbar-content {
    display: flex;
    align-items: center;
    justify-content: space-between;
  }

  .navbar-brand {
    text-decoration: none;
    display: flex;
    flex-direction: column;
    line-height: 1;
    cursor: pointer;
  }

  .brand-text {
    font-family: 'Arial Black', 'Helvetica Neue', sans-serif;
    font-weight: 900;
    font-size: 2rem;
    color: #000000;
    text-transform: uppercase;
    letter-spacing: -1px;
  }

  .brand-sub {
    font-family: 'Arial Black', 'Helvetica Neue', sans-serif;
    font-weight: 900;
    font-size: 0.75rem;
    color: #0033cc;
    text-transform: uppercase;
    letter-spacing: 2px;
  }

  .navbar-links {
    display: flex;
    gap: 0.5rem;
  }

  .nav-link {
    padding: 0.75rem 1.25rem;
    font-family: 'Arial Black', 'Helvetica Neue', sans-serif;
    font-weight: 900;
    font-size: 0.875rem;
    text-transform: uppercase;
    text-decoration: none;
    color: #000000;
    border: 2px solid transparent;
    transition: all 0.1s ease;
    cursor: pointer;
  }

  .nav-link:hover {
    border: 2px solid #000000;
    background-color: #0033cc;
    color: #ffffff;
  }

  @media (max-width: 768px) {
    .navbar-content {
      flex-direction: column;
      gap: 1rem;
    }

    .navbar-links {
      flex-wrap: wrap;
      justify-content: center;
    }

    .brand-text {
      font-size: 1.5rem;
    }

    .nav-link {
      padding: 0.5rem 0.75rem;
      font-size: 0.75rem;
    }
  }

  @media (max-width: 480px) {
    .navbar {
      padding: 1rem 0;
    }

    .navbar-links {
      gap: 0.25rem;
    }

    .nav-link {
      padding: 0.5rem;
      font-size: 0.7rem;
    }
  }
</style>