<script>
  export let navy = false;
  export let title = '';
  export let subtitle = '';
  export let description = '';
</script>

<section class="hero {navy ? 'hero-navy' : ''}">
  <div class="container">
    <div class="hero-content">
      {#if title}
        <h1 class="hero-title">{title}</h1>
      {/if}
      {#if subtitle}
        <h2 class="hero-subtitle">{subtitle}</h2>
      {/if}
      {#if description}
        <p class="hero-description">{description}</p>
      {/if}
      <slot />
    </div>
  </div>
</section>

<style>
  .hero {
    padding: 6rem 2rem;
    border-bottom: 4px solid #000000;
    background-color: #ffffff;
  }

  .hero-navy {
    background-color: #0033cc;
    color: #ffffff;
  }

  .hero-navy h1,
  .hero-navy h2,
  .hero-navy h3 {
    color: #ffffff;
  }

  .hero-navy p {
    color: #ffffff;
  }

  .hero-content {
    max-width: 1200px;
    margin: 0 auto;
  }

  .hero-title {
    font-family: 'Arial Black', 'Helvetica Neue', sans-serif;
    font-weight: 900;
    font-size: clamp(2.5rem, 6vw, 5rem);
    line-height: 1.1;
    color: #000000;
    margin-bottom: 1.5rem;
    text-transform: uppercase;
    letter-spacing: -0.5px;
  }

  .hero-subtitle {
    font-family: 'Arial Black', 'Helvetica Neue', sans-serif;
    font-weight: 900;
    font-size: clamp(1.5rem, 3vw, 2.5rem);
    line-height: 1.2;
    color: #0033cc;
    margin-bottom: 1.5rem;
    text-transform: uppercase;
  }

  .hero-navy .hero-subtitle {
    color: #ffffff;
  }

  .hero-description {
    font-family: 'Arial', 'Helvetica Neue', sans-serif;
    font-weight: 700;
    font-size: 1.25rem;
    line-height: 1.6;
    color: #000000;
    margin-bottom: 2rem;
    max-width: 800px;
  }

  .hero-navy .hero-description {
    color: #ffffff;
  }

  @media (max-width: 768px) {
    .hero {
      padding: 4rem 1.5rem;
    }

    .hero-title {
      margin-bottom: 1rem;
    }

    .hero-subtitle {
      margin-bottom: 1rem;
    }

    .hero-description {
      font-size: 1.125rem;
      margin-bottom: 1.5rem;
    }
  }

  @media (max-width: 480px) {
    .hero {
      padding: 3rem 1rem;
    }

    .hero-title {
      font-size: 2rem;
    }

    .hero-subtitle {
      font-size: 1.5rem;
    }

    .hero-description {
      font-size: 1rem;
    }
  }
</style>