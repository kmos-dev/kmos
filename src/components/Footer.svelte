<script>
  import { navigate } from '../lib/router.js';

  function handleNavigate(path) {
    return (e) => {
      e.preventDefault();
      navigate(path);
    };
  }
</script>

<footer class="footer">
  <div class="container">
    <div class="footer-content">
      <div class="footer-brand">
        <h4>KMOS COLLECTIVE</h4>
        <p>Building Software Infrastructure for Institutions</p>
      </div>
      <div class="footer-links">
        <div class="footer-section">
          <h4>Products</h4>
          <ul class="footer-list">
            <li><a href="/school-portal" onclick={handleNavigate('/school-portal')}>School Portal</a></li>
            <li><a href="/college-portal" onclick={handleNavigate('/college-portal')}>College Portal</a></li>
          </ul>
        </div>
        <div class="footer-section">
          <h4>Company</h4>
          <ul class="footer-list">
            <li><a href="/" onclick={handleNavigate('/')}>About</a></li>
            <li><a href="/portals" onclick={handleNavigate('/portals')}>Portals</a></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="footer-bottom">
      <p>&copy; 2026 KMOS Collective. All rights reserved.</p>
    </div>
  </div>
</footer>

<style>
  .footer {
    border-top: 4px solid #000000;
    background-color: #000000;
    color: #ffffff;
    padding: 3rem 2rem;
  }

  .footer-content {
    display: flex;
    justify-content: space-between;
    align-items: flex-start;
    margin-bottom: 2rem;
  }

  .footer-brand h4 {
    font-family: 'Arial Black', 'Helvetica Neue', sans-serif;
    font-weight: 900;
    font-size: 1.5rem;
    color: #ffffff;
    margin-bottom: 0.75rem;
    text-transform: uppercase;
  }

  .footer-brand p {
    font-family: 'Arial', 'Helvetica Neue', sans-serif;
    font-weight: 700;
    font-size: 1rem;
    color: #ffffff;
    line-height: 1.5;
  }

  .footer-links {
    display: flex;
    gap: 4rem;
  }

  .footer-section h4 {
    font-family: 'Arial Black', 'Helvetica Neue', sans-serif;
    font-weight: 900;
    font-size: 1rem;
    color: #ffffff;
    margin-bottom: 1rem;
    text-transform: uppercase;
  }

  .footer-list {
    list-style: none;
    padding: 0;
    margin: 0;
  }

  .footer-list li {
    margin-bottom: 0.5rem;
  }

  .footer-list a {
    font-family: 'Arial', 'Helvetica Neue', sans-serif;
    font-weight: 700;
    font-size: 0.9375rem;
    color: #ffffff;
    text-decoration: none;
    transition: color 0.1s ease;
    cursor: pointer;
  }

  .footer-list a:hover {
    color: #0033cc;
    text-decoration: underline;
  }

  .footer-bottom {
    border-top: 2px solid #333;
    padding-top: 1.5rem;
    text-align: center;
  }

  .footer-bottom p {
    font-family: 'Arial', 'Helvetica Neue', sans-serif;
    font-weight: 700;
    font-size: 0.875rem;
    color: #ffffff;
  }

  @media (max-width: 768px) {
    .footer-content {
      flex-direction: column;
      gap: 2rem;
    }

    .footer-links {
      flex-direction: column;
      gap: 2rem;
    }

    .footer {
      padding: 2rem 1.5rem;
    }
  }

  @media (max-width: 480px) {
    .footer {
      padding: 1.5rem 1rem;
    }

    .footer-brand h4 {
      font-size: 1.25rem;
    }

    .footer-brand p {
      font-size: 0.875rem;
    }
  }
</style>