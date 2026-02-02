<script>
  export let navy = false;
  export let title = '';
  export let subtitle = '';
</script>

<div class="card {navy ? 'card-navy' : ''}">
  {#if title}
    <h3 class="card-title">{title}</h3>
  {/if}
  {#if subtitle}
    <p class="card-subtitle">{subtitle}</p>
  {/if}
  <div class="card-content">
    <slot />
  </div>
</div>

<style>
  .card {
    border: 4px solid #000000;
    background-color: #ffffff;
    box-shadow: 6px 6px 0px #000000;
    padding: 2rem;
    height: 100%;
    display: flex;
    flex-direction: column;
  }

  .card-navy {
    background-color: #0033cc;
    color: #ffffff;
  }

  .card-navy h2,
  .card-navy h3,
  .card-navy h4 {
    color: #ffffff;
  }

  .card-navy p {
    color: #ffffff;
  }

  .card-title {
    font-family: 'Arial Black', 'Helvetica Neue', sans-serif;
    font-weight: 900;
    font-size: 1.5rem;
    color: #000000;
    margin-bottom: 1rem;
    text-transform: uppercase;
  }

  .card-navy .card-title {
    color: #ffffff;
  }

  .card-subtitle {
    font-family: 'Arial', 'Helvetica Neue', sans-serif;
    font-weight: 700;
    font-size: 1rem;
    color: #0033cc;
    margin-bottom: 1.5rem;
  }

  .card-navy .card-subtitle {
    color: #ffffff;
  }

  .card-content {
    flex: 1;
  }

  @media (max-width: 768px) {
    .card {
      padding: 1.5rem;
    }

    .card-title {
      font-size: 1.25rem;
    }

    .card-subtitle {
      font-size: 0.9375rem;
    }
  }

  @media (max-width: 480px) {
    .card {
      padding: 1.25rem;
    }

    .card-title {
      font-size: 1.125rem;
    }
  }
</style>