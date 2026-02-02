<script>
  import Hero from '../components/Hero.svelte';
  import Button from '../components/Button.svelte';
  import Card from '../components/Card.svelte';
  import Section from '../components/Section.svelte';
  import Pricing from '../components/Pricing.svelte';
</script>

<Hero
  title="Our Portals"
  subtitle="Institutional Management Systems"
  description="Comprehensive software solutions designed specifically for educational institutions, available as web platforms with optional mobile applications."
/>

<Section
  title="School Portal"
  subtitle="A complete K-12 institutional management system designed for modern schools."
>
  <div class="portal-overview">
    <div class="portal-description">
      <p>The School Portal is a comprehensive management platform designed specifically for K-12 educational institutions. It streamlines administrative tasks, enhances communication between stakeholders, and provides powerful tools for teachers, administrators, parents, and students.</p>
      <p>Available as a responsive web platform with an optional mobile application for convenient access on any device.</p>
    </div>
    <div class="portal-features">
      <h3>Key Features</h3>
      <ul class="feature-list">
        <li>Student Records Management</li>
        <li>Teacher Dashboards</li>
        <li>Parent Communication Tools</li>
        <li>Attendance Tracking System</li>
        <li>Grading and Assessment Tools</li>
      </ul>
      <div class="portal-actions">
        <Button href="/school-portal" primary large>View School Portal Details</Button>
      </div>
    </div>
  </div>
</Section>

<Section navy title="College Portal" subtitle="Advanced higher education management for colleges and universities.">
  <div class="portal-overview">
    <div class="portal-description">
      <p>The College Portal is an advanced institutional management system built for higher education institutions. It handles complex academic workflows, manages student lifecycles, and provides comprehensive analytics for data-driven decision making.</p>
      <p>Available as a robust web platform with an optional mobile application for faculty and students.</p>
    </div>
    <div class="portal-features">
      <h3>Key Features</h3>
      <ul class="feature-list">
        <li>Course and Department Management</li>
        <li>Student Lifecycle Tracking</li>
        <li>Faculty Dashboards</li>
        <li>Performance Analytics</li>
        <li>Academic Resource Management</li>
      </ul>
      <div class="portal-actions">
        <Button href="/college-portal" primary large>View College Portal Details</Button>
      </div>
    </div>
  </div>
</Section>

<Section title="Pricing Model" subtitle="Transparent, scalable pricing designed for institutions of all sizes.">
  <div class="pricing-grid">
    <Pricing
      title="School Portal Pricing"
      items={[
        { label: 'Fixed Server Cost', value: 'Custom Quote' },
        { label: 'Variable Database Cost', value: 'Based on Usage' },
        { label: 'Per-Student Fee', value: 'Per Student/Year' }
      ]}
    >
      <Button href="/school-portal" primary>Request School Portal Demo</Button>
    </Pricing>
    <Pricing
      title="College Portal Pricing"
      items={[
        { label: 'Fixed Server Cost', value: 'Custom Quote' },
        { label: 'Variable Database Cost', value: 'Based on Usage' },
        { label: 'Per-Student Fee', value: 'Per Student/Year' }
      ]}
    >
      <Button href="/college-portal" primary>Request College Portal Demo</Button>
    </Pricing>
  </div>
</Section>

<Section navy title="Platform Features" subtitle="Available across both portals.">
  <div class="platform-features">
    <div class="platform-feature">
      <h4>Web Platform</h4>
      <p>Full-featured web application accessible from any modern browser with responsive design for desktop, tablet, and mobile devices.</p>
    </div>
    <div class="platform-feature">
      <h4>Optional Mobile App</h4>
      <p>Native mobile applications available for iOS and Android, providing push notifications and offline access to key features.</p>
    </div>
    <div class="platform-feature">
      <h4>Cloud Infrastructure</h4>
      <p>Hosted on secure, scalable cloud infrastructure with automatic backups and disaster recovery capabilities.</p>
    </div>
    <div class="platform-feature">
      <h4>Data Security</h4>
      <p>Enterprise-grade security with encryption, access controls, and compliance with educational data protection regulations.</p>
    </div>
  </div>
</Section>

<Section title="Get Started" subtitle="Transform your institution with KMOS Collective.">
  <div class="cta-container">
    <p class="cta-text">Contact us to discuss your institution's needs and receive a customized quote for your preferred portal solution.</p>
    <div class="cta-buttons">
      <Button href="/school-portal" primary large>School Portal Demo</Button>
      <Button href="/college-portal" large>College Portal Demo</Button>
    </div>
  </div>
</Section>

<style>
  .portal-overview {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 3rem;
    margin-top: 2rem;
  }

  .portal-description p {
    font-family: 'Arial', 'Helvetica Neue', sans-serif;
    font-weight: 700;
    font-size: 1.125rem;
    color: #000000;
    line-height: 1.6;
    margin-bottom: 1.5rem;
  }

  .portal-features h3 {
    font-family: 'Arial Black', 'Helvetica Neue', sans-serif;
    font-weight: 900;
    font-size: 1.5rem;
    color: #0033cc;
    margin-bottom: 1.5rem;
    text-transform: uppercase;
  }

  .feature-list {
    list-style: none;
    padding: 0;
    margin: 0 0 2rem 0;
  }

  .feature-list li {
    padding: 1rem;
    border: 2px solid #000000;
    margin-bottom: 0.75rem;
    background-color: #ffffff;
    font-family: 'Arial', 'Helvetica Neue', sans-serif;
    font-weight: 700;
    font-size: 1rem;
    color: #000000;
  }

  .feature-list li::before {
    content: '▸';
    margin-right: 0.75rem;
    color: #0033cc;
    font-weight: 900;
  }

  .portal-actions {
    margin-top: 1.5rem;
  }

  .pricing-grid {
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    gap: 2rem;
    margin-top: 2rem;
  }

  .platform-features {
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    gap: 2rem;
    margin-top: 2rem;
  }

  .platform-feature {
    border: 4px solid #000000;
    background-color: #ffffff;
    box-shadow: 6px 6px 0px #000000;
    padding: 2rem;
  }

  .platform-feature h4 {
    font-family: 'Arial Black', 'Helvetica Neue', sans-serif;
    font-weight: 900;
    font-size: 1.25rem;
    color: #0033cc;
    margin-bottom: 1rem;
    text-transform: uppercase;
  }

  .platform-feature p {
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
    color: #000000;
    margin-bottom: 2rem;
    line-height: 1.6;
  }

  .cta-buttons {
    display: flex;
    gap: 1.5rem;
    justify-content: center;
    flex-wrap: wrap;
  }

  @media (max-width: 1024px) {
    .portal-overview {
      grid-template-columns: 1fr;
      gap: 2rem;
    }
  }

  @media (max-width: 768px) {
    .pricing-grid,
    .platform-features {
      grid-template-columns: 1fr;
    }

    .cta-buttons {
      flex-direction: column;
      align-items: center;
    }

    .platform-feature {
      padding: 1.5rem;
    }
  }

  @media (max-width: 480px) {
    .portal-overview {
      gap: 1.5rem;
    }

    .pricing-grid,
    .platform-features {
      gap: 1.5rem;
    }

    .cta-text {
      font-size: 1.125rem;
    }
  }
</style>