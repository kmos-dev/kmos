<script>
  export let title = '';
  export let items = [];
</script>

<div class="pricing-card">
  {#if title}
    <h3 class="pricing-title">{title}</h3>
  {/if}
  <div class="pricing-items">
    {#each items as item}
      <div class="pricing-item">
        <span class="pricing-item-label">{item.label}</span>
        <span class="pricing-item-value">{item.value}</span>
      </div>
    {/each}
  </div>
  <slot />
</div>

<style>
  .pricing-card {
    border: 4px solid #000000;
    background-color: #ffffff;
    box-shadow: 8px 8px 0px #000000;
    padding: 2.5rem;
    text-align: center;
    height: 100%;
    display: flex;
    flex-direction: column;
  }

  .pricing-title {
    font-family: 'Arial Black', 'Helvetica Neue', sans-serif;
    font-weight: 900;
    font-size: 1.5rem;
    color: #000000;
    margin-bottom: 1.5rem;
    border-bottom: 2px solid #000000;
    padding-bottom: 1rem;
    text-transform: uppercase;
  }

  .pricing-items {
    flex: 1;
    margin-bottom: 1.5rem;
  }

  .pricing-item {
    padding: 1rem;
    border: 2px solid #000000;
    margin-bottom: 1rem;
    font-weight: 700;
    background-color: #ffffff;
  }

  .pricing-item-label {
    display: block;
    font-family: 'Arial', 'Helvetica Neue', sans-serif;
    font-weight: 700;
    font-size: 0.875rem;
    text-transform: uppercase;
    color: #0033cc;
    margin-bottom: 0.5rem;
  }

  .pricing-item-value {
    display: block;
    font-family: 'Arial Black', 'Helvetica Neue', sans-serif;
    font-weight: 900;
    font-size: 1.5rem;
    color: #000000;
  }

  @media (max-width: 768px) {
    .pricing-card {
      padding: 2rem;
    }

    .pricing-title {
      font-size: 1.25rem;
    }

    .pricing-item-value {
      font-size: 1.25rem;
    }
  }

  @media (max-width: 480px) {
    .pricing-card {
      padding: 1.5rem;
    }

    .pricing-title {
      font-size: 1.125rem;
    }

    .pricing-item {
      padding: 0.75rem;
    }

    .pricing-item-value {
      font-size: 1.125rem;
    }
  }
</style>