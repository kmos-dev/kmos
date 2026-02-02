<script>
  import Hero from '../components/Hero.svelte';
  import Button from '../components/Button.svelte';
  import Section from '../components/Section.svelte';
  import Pricing from '../components/Pricing.svelte';
</script>

<Hero
  navy
  title="College Portal"
  subtitle="Higher Education Management System"
  description="An advanced institutional management platform engineered for colleges and universities, handling complex academic workflows and student lifecycles."
/>

<Section
  title="About College Portal"
  subtitle="Enterprise-grade management for higher education institutions."
>
  <div class="about-content">
    <p>The College Portal is a sophisticated institutional management system designed specifically for higher education institutions. Our platform addresses the unique challenges of colleges and universities, providing comprehensive tools for managing complex academic structures, diverse student populations, and extensive faculty networks.</p>
    <p>Built with institutional excellence in mind, the College Portal offers advanced features for course management, departmental administration, student lifecycle tracking, and performance analytics. The platform enables data-driven decision making at administrative, departmental, and individual faculty levels.</p>
    <p>The platform is available as a fully responsive web application, ensuring accessibility from any device. An optional mobile application extends functionality to smartphones and tablets, providing real-time notifications and on-the-go access for faculty and students.</p>
  </div>
</Section>

<Section navy title="Core Features" subtitle="Advanced tools for higher education administration.">
  <div class="features-grid">
    <div class="feature-detail">
      <h3>Course and Department Management</h3>
      <p>Comprehensive course catalog management with departmental organization, prerequisite tracking, credit hour management, and scheduling tools. Features include course approval workflows, syllabus management, and cross-departmental course coordination.</p>
    </div>
    <div class="feature-detail">
      <h3>Student Lifecycle Tracking</h3>
      <p>Complete student journey management from admission through graduation. Includes application tracking, enrollment management, academic progress monitoring, degree audit, graduation requirements verification, and alumni transition tools.</p>
    </div>
    <div class="feature-detail">
      <h3>Faculty Dashboards</h3>
      <p>Personalized faculty portals providing access to course materials, student rosters, grading tools, research management, and administrative resources. Supports office hour scheduling, committee assignments, and faculty workload tracking.</p>
    </div>
    <div class="feature-detail">
      <h3>Performance Analytics</h3>
      <p>Advanced analytics platform with customizable dashboards for institutional metrics, student success indicators, faculty performance, course completion rates, and accreditation reporting. Features predictive analytics and trend analysis.</p>
    </div>
    <div class="feature-detail">
      <h3>Academic Resource Management</h3>
      <p>Comprehensive management of institutional resources including classroom scheduling, laboratory reservations, equipment tracking, library resources, and facility utilization reporting. Optimizes resource allocation across departments.</p>
    </div>
    <div class="feature-detail">
      <h3>Administrative Controls</h3>
      <p>Enterprise-grade administrative module with granular access controls, system configuration, data governance, audit trails, and compliance management. Supports multi-campus administration and hierarchical permission structures.</p>
    </div>
  </div>
</Section>

<Section title="Platform Capabilities" subtitle="Built for scale, security, and institutional excellence.">
  <div class="capabilities-grid">
    <div class="capability-item">
      <h4>Web Platform</h4>
      <p>Full-featured web application accessible from any modern browser with responsive design optimized for desktop, tablet, and mobile devices. No software installation required for institutional deployment.</p>
    </div>
    <div class="capability-item">
      <h4>Mobile Application</h4>
      <p>Optional native mobile applications for iOS and Android providing push notifications, offline access to key features, and optimized mobile experience for faculty and students on campus.</p>
    </div>
    <div class="capability-item">
      <h4>Cloud Infrastructure</h4>
      <p>Hosted on enterprise-grade cloud infrastructure with automatic scaling, 99.9% uptime guarantee, automatic daily backups, and disaster recovery capabilities designed for institutional continuity.</p>
    </div>
    <div class="capability-item">
      <h4>Data Security</h4>
      <p>Bank-level security with end-to-end encryption, secure authentication, access controls, and compliance with FERPA, GDPR, and other educational data protection regulations.</p>
    </div>
    <div class="capability-item">
      <h4>Integration Ready</h4>
      <p>Comprehensive API access for integration with existing systems including learning management systems, student information systems, payment gateways, and third-party educational tools.</p>
    </div>
    <div class="capability-item">
      <h4>Analytics & Reporting</h4>
      <p>Advanced analytics dashboard with customizable reports, data visualization, export capabilities, and automated reporting for administrative decision making and accreditation compliance.</p>
    </div>
  </div>
</Section>

<Section navy title="Pricing Structure" subtitle="Transparent pricing designed for institutional budgets.">
  <div class="pricing-container">
    <Pricing
      title="College Portal Pricing"
      items={[
        { label: 'Fixed Server Cost', value: 'Custom Quote' },
        { label: 'Variable Database Cost', value: 'Based on Usage' },
        { label: 'Per-Student Management Fee', value: 'Per Student/Year' }
      ]}
    >
      <Button href="/portals" primary>Request Detailed Quote</Button>
    </Pricing>
    <div class="pricing-explanation">
      <h3>Pricing Breakdown</h3>
      <div class="pricing-detail">
        <h4>Fixed Server Cost</h4>
        <p>A one-time or annual fee covering server infrastructure, software licensing, and core platform maintenance. This cost is determined based on institutional requirements, expected user load, and deployment complexity.</p>
      </div>
      <div class="pricing-detail">
        <h4>Variable Database Cost</h4>
        <p>Usage-based pricing for database storage and processing. Costs scale with your institution's data volume and transaction requirements, ensuring you only pay for what you use as your institution grows.</p>
      </div>
      <div class="pricing-detail">
        <h4>Per-Student Management Fee</h4>
        <p>An annual fee per enrolled student covering ongoing support, updates, and platform access. This model aligns costs with institutional enrollment and provides predictable annual expenses for budget planning.</p>
      </div>
    </div>
  </div>
</Section>

<Section title="Implementation & Support" subtitle="Comprehensive onboarding and ongoing partnership.">
  <div class="support-grid">
    <div class="support-item">
      <h4>Dedicated Onboarding</h4>
      <p>Professional implementation team guides your institution through setup, data migration from legacy systems, user training, and system configuration to ensure smooth deployment with minimal disruption.</p>
    </div>
    <div class="support-item">
      <h4>Training Programs</h4>
      <p>Comprehensive training for administrators, faculty, and staff including documentation, video tutorials, and live training sessions tailored to your institution's specific workflows and requirements.</p>
    </div>
    <div class="support-item">
      <h4>Technical Support</h4>
      <p>24/7 technical support with dedicated account managers, priority response times, and regular check-ins to ensure optimal platform performance and rapid resolution of any issues.</p>
    </div>
    <div class="support-item">
      <h4>Continuous Updates</h4>
      <p>Regular feature updates, security patches, and platform improvements included at no additional cost, ensuring your institution always has access to the latest capabilities and security standards.</p>
    </div>
  </div>
</Section>

<Section navy title="Request a Demo" subtitle="Experience the College Portal firsthand.">
  <div class="demo-container">
    <p class="demo-text">Schedule a personalized demonstration of the College Portal to see how our platform can transform your institution's operations. Our team will provide a comprehensive walkthrough tailored to your specific requirements and academic structure.</p>
    <div class="demo-actions">
      <a 
        href="mailto:kmos.tec@gmail.com?subject=College Portal Demo Request&body=Hello KMOS Team,%0D%0A%0D%0AI am interested in scheduling a demo for the College Portal.%0D%0A%0D%0APlease find my details below:%0D%0A%0D%0AInstitution Name:%0D%0AContact Person:%0D%0APhone Number:%0D%0AEmail Address:%0D%0A%0D%0ABest time to contact:%0D%0A%0D%0AThank you,%0D%0A[Your Name]"
        class="demo-btn demo-btn-primary"
      >
        Request Demo
      </a>
      <a 
        href="/portals"
        class="demo-btn"
      >
        Contact Sales
      </a>
    </div>
  </div>
</Section>

<style>
  /* Typography System */
  :global(.college-portal) {
    --primary-color: #7c3aed;
    --primary-dark: #6d28d9;
    --primary-light: #8b5cf6;
    --secondary-color: #1e1b4b;
    --accent-color: #c026d3;
    --success-color: #059669;
    --warning-color: #d97706;
    --background-light: #faf5ff;
    --background-white: #ffffff;
    --text-primary: #1e293b;
    --text-secondary: #475569;
    --text-muted: #64748b;
    --border-light: #e9d5ff;
    --border-medium: #c4b5fd;
    --shadow-sm: 0 1px 2px rgba(0, 0, 0, 0.05);
    --shadow-md: 0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06);
    --shadow-lg: 0 10px 15px -3px rgba(0, 0, 0, 0.1), 0 4px 6px -2px rgba(0, 0, 0, 0.05);
    --shadow-xl: 0 20px 25px -5px rgba(0, 0, 0, 0.1), 0 10px 10px -5px rgba(0, 0, 0, 0.04);
    --transition-fast: 150ms ease;
    --transition-normal: 250ms ease;
    --transition-slow: 350ms ease;
    --radius-sm: 6px;
    --radius-md: 10px;
    --radius-lg: 16px;
    --radius-xl: 24px;
  }

  .about-content p {
    font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
    font-weight: 500;
    font-size: 1.125rem;
    color: var(--text-primary);
    line-height: 1.8;
    margin-bottom: 1.5rem;
  }

  .about-content p:first-of-type::first-letter {
    font-size: 3rem;
    font-weight: 700;
    color: var(--primary-color);
    float: left;
    line-height: 1;
    margin-right: 0.5rem;
    margin-top: 0.25rem;
  }

  .features-grid {
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    gap: 1.5rem;
    margin-top: 2rem;
  }

  .feature-detail {
    border: 1px solid var(--border-light);
    background-color: var(--background-white);
    border-radius: var(--radius-lg);
    padding: 2rem;
    transition: all var(--transition-normal);
    position: relative;
    overflow: hidden;
  }

  .feature-detail::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    height: 4px;
    background: linear-gradient(90deg, var(--primary-color), var(--accent-color));
    opacity: 0;
    transition: opacity var(--transition-normal);
  }

  .feature-detail:hover {
    transform: translateY(-4px);
    box-shadow: var(--shadow-xl);
    border-color: var(--primary-light);
  }

  .feature-detail:hover::before {
    opacity: 1;
  }

  .feature-detail h3 {
    font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
    font-weight: 700;
    font-size: 1.25rem;
    color: var(--primary-color);
    margin-bottom: 1rem;
    display: flex;
    align-items: center;
    gap: 0.75rem;
  }

  .feature-detail h3::before {
    content: '';
    width: 8px;
    height: 8px;
    background: var(--primary-color);
    border-radius: 50%;
    flex-shrink: 0;
  }

  .feature-detail p {
    font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
    font-weight: 400;
    font-size: 1rem;
    color: var(--text-secondary);
    line-height: 1.7;
  }

  .capabilities-grid {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 1.5rem;
    margin-top: 2rem;
  }

  .capability-item {
    border: 1px solid var(--border-light);
    background-color: var(--background-white);
    border-radius: var(--radius-lg);
    padding: 2rem;
    transition: all var(--transition-normal);
    text-align: center;
  }

  .capability-item:hover {
    transform: translateY(-4px);
    box-shadow: var(--shadow-xl);
    border-color: var(--primary-light);
  }

  .capability-item h4 {
    font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
    font-weight: 700;
    font-size: 1.125rem;
    color: var(--primary-color);
    margin-bottom: 1rem;
    padding-bottom: 1rem;
    border-bottom: 2px solid var(--border-light);
  }

  .capability-item p {
    font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
    font-weight: 400;
    font-size: 0.9375rem;
    color: var(--text-secondary);
    line-height: 1.6;
  }

  .pricing-container {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 3rem;
    margin-top: 2rem;
    align-items: start;
  }

  .pricing-explanation h3 {
    font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
    font-weight: 700;
    font-size: 1.5rem;
    color: var(--secondary-color);
    margin-bottom: 2rem;
    position: relative;
    padding-bottom: 1rem;
  }

  .pricing-explanation h3::after {
    content: '';
    position: absolute;
    bottom: 0;
    left: 0;
    width: 60px;
    height: 3px;
    background: linear-gradient(90deg, var(--primary-color), var(--accent-color));
    border-radius: 2px;
  }

  .pricing-detail {
    margin-bottom: 2rem;
    padding-bottom: 2rem;
    border-bottom: 1px solid var(--border-light);
  }

  .pricing-detail:last-child {
    border-bottom: none;
    margin-bottom: 0;
    padding-bottom: 0;
  }

  .pricing-detail h4 {
    font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
    font-weight: 600;
    font-size: 1.125rem;
    color: var(--primary-color);
    margin-bottom: 0.75rem;
  }

  .pricing-detail p {
    font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
    font-weight: 400;
    font-size: 1rem;
    color: var(--text-secondary);
    line-height: 1.6;
  }

  .support-grid {
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    gap: 1.5rem;
    margin-top: 2rem;
  }

  .support-item {
    border: 1px solid var(--border-light);
    background-color: var(--background-white);
    border-radius: var(--radius-lg);
    padding: 2rem;
    transition: all var(--transition-normal);
  }

  .support-item:hover {
    transform: translateY(-4px);
    box-shadow: var(--shadow-xl);
    border-color: var(--primary-light);
  }

  .support-item h4 {
    font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
    font-weight: 700;
    font-size: 1.125rem;
    color: var(--primary-color);
    margin-bottom: 1rem;
    display: flex;
    align-items: center;
    gap: 0.75rem;
  }

  .support-item h4::before {
    content: '✓';
    display: inline-flex;
    align-items: center;
    justify-content: center;
    width: 24px;
    height: 24px;
    background: var(--success-color);
    color: white;
    border-radius: 50%;
    font-size: 0.75rem;
    font-weight: bold;
  }

  .support-item p {
    font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
    font-weight: 400;
    font-size: 1rem;
    color: var(--text-secondary);
    line-height: 1.6;
  }

  .demo-container {
    text-align: center;
    max-width: 900px;
    margin: 0 auto;
    padding: 2rem;
  }

  .demo-text {
    font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
    font-weight: 500;
    font-size: 1.25rem;
    color: #ffffff;
    margin-bottom: 2.5rem;
    line-height: 1.7;
  }

  .demo-actions {
    display: flex;
    gap: 1.5rem;
    justify-content: center;
    flex-wrap: wrap;
  }

  .demo-btn {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    padding: 1rem 2.5rem;
    font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
    font-weight: 600;
    font-size: 1rem;
    text-decoration: none;
    border-radius: var(--radius-md);
    cursor: pointer;
    transition: all var(--transition-normal);
    border: 2px solid var(--primary-color);
    background-color: transparent;
    color: var(--primary-color);
  }

  .demo-btn:hover {
    transform: translateY(-2px);
    box-shadow: var(--shadow-lg);
  }

  .demo-btn:active {
    transform: translateY(0);
  }

  .demo-btn-primary {
    background-color: var(--primary-color);
    color: #ffffff;
  }

  .demo-btn-primary:hover {
    background-color: var(--primary-dark);
    border-color: var(--primary-dark);
    color: #ffffff;
  }

  @media (max-width: 1024px) {
    .capabilities-grid {
      grid-template-columns: repeat(2, 1fr);
    }

    .pricing-container {
      grid-template-columns: 1fr;
      gap: 2rem;
    }
  }

  @media (max-width: 768px) {
    .features-grid,
    .capabilities-grid,
    .support-grid {
      grid-template-columns: 1fr;
    }

    .demo-actions {
      flex-direction: column;
      align-items: center;
    }

    .feature-detail,
    .capability-item,
    .support-item {
      padding: 1.5rem;
    }

    .about-content p {
      font-size: 1rem;
    }

    .demo-text {
      font-size: 1.125rem;
    }
  }

  @media (max-width: 480px) {
    .features-grid,
    .capabilities-grid,
    .support-grid,
    .pricing-container {
      gap: 1.5rem;
    }

    .demo-text {
      font-size: 1rem;
      padding: 0 1rem;
    }

    .pricing-explanation h3 {
      font-size: 1.25rem;
    }
  }
</style>