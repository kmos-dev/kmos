<script>
  export let navy = false;
  export let title = '';
  export let subtitle = '';
</script>

<section class="section {navy ? 'section-navy' : ''}">
  <div class="container">
    {#if title}
      <h2 class="section-title">{title}</h2>
    {/if}
    {#if subtitle}
      <p class="section-subtitle">{subtitle}</p>
    {/if}
    <div class="section-content">
      <slot />
    </div>
  </div>
</section>

<style>
  .section {
    padding: 4rem 2rem;
    border-bottom: 4px solid #000000;
    background-color: #ffffff;
  }

  .section-navy {
    background-color: #0033cc;
    color: #ffffff;
  }

  .section-navy h2,
  .section-navy h3,
  .section-navy h4 {
    color: #ffffff;
  }

  .section-navy p {
    color: #ffffff;
  }

  .section-title {
    font-family: 'Arial Black', 'Helvetica Neue', sans-serif;
    font-weight: 900;
    font-size: clamp(2rem, 4vw, 3.5rem);
    color: #000000;
    margin-bottom: 1rem;
    text-transform: uppercase;
    letter-spacing: -0.5px;
  }

  .section-navy .section-title {
    color: #ffffff;
  }

  .section-subtitle {
    font-family: 'Arial', 'Helvetica Neue', sans-serif;
    font-weight: 700;
    font-size: 1.25rem;
    color: #0033cc;
    margin-bottom: 2rem;
    max-width: 800px;
  }

  .section-navy .section-subtitle {
    color: #ffffff;
  }

  .section-content {
    margin-top: 2rem;
  }

  @media (max-width: 768px) {
    .section {
      padding: 3rem 1.5rem;
    }

    .section-title {
      margin-bottom: 0.75rem;
    }

    .section-subtitle {
      font-size: 1.125rem;
      margin-bottom: 1.5rem;
    }

    .section-content {
      margin-top: 1.5rem;
    }
  }

  @media (max-width: 480px) {
    .section {
      padding: 2rem 1rem;
    }

    .section-title {
      font-size: 1.75rem;
    }

    .section-subtitle {
      font-size: 1rem;
    }
  }
</style>