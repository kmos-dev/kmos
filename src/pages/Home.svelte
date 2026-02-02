<script>
  import Hero from '../components/Hero.svelte';
  import Button from '../components/Button.svelte';
  import Card from '../components/Card.svelte';
  import Section from '../components/Section.svelte';
</script>

<Hero
  title="We Build Software Infrastructure for Institutions"
  description="KMOS Collective delivers robust, scalable institutional management systems designed for modern educational institutions."
>
  <div class="hero-buttons">
    <Button href="/portals" primary large>Explore Portals</Button>
    <a href="mailto:contact@kmoscollective.com" class="contact-email-link">Contact Us</a>
  </div>
</Hero>

<Section
  title="About KMOS Collective"
  subtitle="A software collective dedicated to building powerful infrastructure for educational institutions worldwide."
>
  <div class="about-grid">
    <Card title="Our Mission" subtitle="Empowering Education">
      <p>We develop comprehensive software solutions that streamline operations, enhance communication, and improve outcomes for schools, colleges, and universities.</p>
    </Card>
    <Card title="Our Approach" subtitle="Institutional Excellence">
      <p>Our platforms are built with institutional needs in mind—scalable, secure, and designed to handle the complex workflows of educational organizations.</p>
    </Card>
    <Card title="Our Commitment" subtitle="Long-term Partnership">
      <p>We don't just build software; we establish lasting partnerships with institutions, providing ongoing support and continuous improvement.</p>
    </Card>
  </div>
</Section>

<Section navy title="Our Products" subtitle="Comprehensive management systems for educational institutions.">
  <div class="products-grid">
    <Card navy title="School Portal" subtitle="K-12 Management System">
      <p>A complete institutional management platform for K-12 schools, featuring student records, teacher dashboards, parent communication, attendance tracking, and grading systems.</p>
      <div class="card-actions">
        <Button href="/portals" primary>Learn More</Button>
      </div>
    </Card>
    <Card navy title="College Portal" subtitle="Higher Education Management">
      <p>An advanced management system for colleges and universities, offering course management, department administration, student lifecycle tracking, faculty dashboards, and performance analytics.</p>
      <div class="card-actions">
        <Button href="/portals" primary>Learn More</Button>
      </div>
    </Card>
  </div>
</Section>

<Section title="Why Choose KMOS?" subtitle="Built for institutions, designed for success.">
  <div class="features-grid">
    <div class="feature-box">
      <h4>Web Platform</h4>
      <p>Access your institutional data from anywhere with our responsive web-based platform.</p>
    </div>
    <div class="feature-box">
      <h4>Mobile App</h4>
      <p>Optional mobile applications for on-the-go access to key features and notifications.</p>
    </div>
    <div class="feature-box">
      <h4>Scalable</h4>
      <p>Designed to grow with your institution, from small schools to large universities.</p>
    </div>
    <div class="feature-box">
      <h4>Secure</h4>
      <p>Enterprise-grade security to protect sensitive institutional and student data.</p>
    </div>
  </div>
</Section>

<Section navy title="Ready to Transform Your Institution?" subtitle="Get started with KMOS Collective today.">
  <div class="cta-container">
    <p class="cta-text">Join institutions worldwide who trust KMOS Collective for their software infrastructure needs.</p>
    <div class="cta-buttons">
      <Button href="/portals" primary large>Explore Our Portals</Button>
      <a href="mailto:contact@kmoscollective.com" class="cta-button cta-secondary">Request a Demo</a>
    </div>
  </div>
</Section>

<section class="contact-section">
  <div class="contact-container">
    <h3>Get in Touch</h3>
    <p>Have questions or need assistance? Reach out to us at:</p>
    <a href="mailto:kmos.tec@gmail.com" class="contact-email">
      <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
        <path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"></path>
        <polyline points="22,6 12,13 2,6"></polyline>
      </svg>
      kmos.tec@gmail.com
    </a>
  </div>
</section>

<style>
  .hero-buttons {
    display: flex;
    gap: 1.5rem;
    flex-wrap: wrap;
    margin-top: 2rem;
    align-items: center;
  }

  .contact-email-link {
    padding: 0.875rem 2rem;
    font-family: 'Arial Black', 'Helvetica Neue', sans-serif;
    font-weight: 900;
    font-size: 1rem;
    text-transform: uppercase;
    text-decoration: none;
    color: #000000;
    border: 2px solid #000000;
    transition: all 0.1s ease;
    cursor: pointer;
  }

  .contact-email-link:hover {
    background-color: #000000;
    color: #ffffff;
  }

  .cta-button {
    padding: 1rem 2rem;
    font-family: 'Arial Black', 'Helvetica Neue', sans-serif;
    font-weight: 900;
    font-size: 1rem;
    text-transform: uppercase;
    text-decoration: none;
    transition: all 0.1s ease;
    cursor: pointer;
    border: 2px solid transparent;
    display: inline-flex;
    align-items: center;
    justify-content: center;
  }

  .cta-secondary {
    background-color: transparent;
    color: #ffffff;
    border: 2px solid #ffffff;
  }

  .cta-secondary:hover {
    background-color: #ffffff;
    color: #000000;
  }

  .about-grid {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 2rem;
    margin-top: 2rem;
  }

  .products-grid {
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    gap: 2rem;
    margin-top: 2rem;
  }

  .card-actions {
    margin-top: 1.5rem;
  }

  .features-grid {
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    gap: 2rem;
    margin-top: 2rem;
  }

  .feature-box {
    border: 4px solid #000000;
    background-color: #ffffff;
    box-shadow: 6px 6px 0px #000000;
    padding: 2rem;
  }

  .feature-box h4 {
    font-family: 'Arial Black', 'Helvetica Neue', sans-serif;
    font-weight: 900;
    font-size: 1.25rem;
    color: #0033cc;
    margin-bottom: 1rem;
    text-transform: uppercase;
  }

  .feature-box p {
    font-family: 'Arial', 'Helvetica Neue', sans-serif;
    font-weight: 700;
    font-size: 1rem;
    color: #333;
    line-height: 1.5;
  }

  .cta-container {
    text-align: center;
    max-width: 800px;
    margin: 0 auto;
  }

  .cta-text {
    font-family: 'Arial', 'Helvetica Neue', sans-serif;
    font-weight: 700;
    font-size: 1.25rem;
    color: #ffffff;
    margin-bottom: 2rem;
    line-height: 1.6;
  }

  .cta-buttons {
    display: flex;
    gap: 1.5rem;
    justify-content: center;
    flex-wrap: wrap;
    align-items: center;
  }

  .contact-section {
    background-color: #f5f5f5;
    padding: 4rem 2rem;
    border-top: 4px solid #000000;
  }

  .contact-container {
    max-width: 600px;
    margin: 0 auto;
    text-align: center;
  }

  .contact-section h3 {
    font-family: 'Arial Black', 'Helvetica Neue', sans-serif;
    font-weight: 900;
    font-size: 2rem;
    color: #000000;
    text-transform: uppercase;
    margin-bottom: 1rem;
  }

  .contact-section p {
    font-family: 'Arial', 'Helvetica Neue', sans-serif;
    font-weight: 700;
    font-size: 1.125rem;
    color: #333;
    margin-bottom: 1.5rem;
  }

  .contact-email {
    display: inline-flex;
    align-items: center;
    gap: 0.75rem;
    font-family: 'Arial Black', 'Helvetica Neue', sans-serif;
    font-weight: 900;
    font-size: 1.25rem;
    color: #0033cc;
    text-decoration: none;
    padding: 1rem 1.5rem;
    border: 2px solid #0033cc;
    transition: all 0.2s ease;
  }

  .contact-email:hover {
    background-color: #0033cc;
    color: #ffffff;
  }

  .contact-email svg {
    flex-shrink: 0;
  }

  @media (max-width: 1024px) {
    .about-grid {
      grid-template-columns: repeat(2, 1fr);
    }
  }

  @media (max-width: 768px) {
    .about-grid,
    .products-grid,
    .features-grid {
      grid-template-columns: 1fr;
    }

    .hero-buttons {
      flex-direction: column;
      align-items: flex-start;
    }

    .cta-buttons {
      flex-direction: column;
      align-items: center;
    }

    .feature-box {
      padding: 1.5rem;
    }
  }

  @media (max-width: 480px) {
    .about-grid,
    .products-grid,
    .features-grid {
      gap: 1.5rem;
    }

    .cta-text {
      font-size: 1.125rem;
    }
  }
</style>