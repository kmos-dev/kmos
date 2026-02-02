<script>
  import { navigate } from '../lib/router.js';

  export let href = '';
  export let primary = false;
  export let large = false;
  export let small = false;
  export let onClick = null;
  export let type = 'button';
  export let external = false;

  function handleClick(e) {
    if (href && !external) {
      e.preventDefault();
      navigate(href);
    }
    if (onClick) {
      onClick(e);
    }
  }
</script>

{#if href}
  {#if external}
    <a
      {href}
      class="btn {primary ? 'btn-primary' : ''} {large ? 'btn-large' : ''} {small ? 'btn-small' : ''}"
      target="_blank"
      rel="noopener noreferrer"
    >
      <slot />
    </a>
  {:else}
    <a
      {href}
      onclick={handleClick}
      class="btn {primary ? 'btn-primary' : ''} {large ? 'btn-large' : ''} {small ? 'btn-small' : ''}"
    >
      <slot />
    </a>
  {/if}
{:else}
  <button
    {type}
    onclick={onClick}
    class="btn {primary ? 'btn-primary' : ''} {large ? 'btn-large' : ''} {small ? 'btn-small' : ''}"
  >
    <slot />
  </button>
{/if}

<style>
  .btn {
    display: inline-block;
    padding: 1rem 2rem;
    font-family: 'Arial Black', 'Helvetica Neue', sans-serif;
    font-weight: 900;
    font-size: 1rem;
    text-transform: uppercase;
    text-decoration: none;
    border: 4px solid #000000;
    background-color: #ffffff;
    color: #000000;
    box-shadow: 6px 6px 0px #000000;
    cursor: pointer;
    transition: all 0.1s ease;
    letter-spacing: 0.5px;
  }

  .btn:hover {
    transform: translate(2px, 2px);
    box-shadow: 4px 4px 0px #000000;
  }

  .btn:active {
    transform: translate(6px, 6px);
    box-shadow: none;
  }

  .btn-primary {
    background-color: #0033cc;
    color: #ffffff;
  }

  .btn-primary:hover {
    background-color: #0026a3;
  }

  .btn-large {
    padding: 1.5rem 3rem;
    font-size: 1.25rem;
  }

  .btn-small {
    padding: 0.75rem 1.5rem;
    font-size: 0.875rem;
  }

  @media (max-width: 768px) {
    .btn-large {
      padding: 1.25rem 2rem;
      font-size: 1rem;
    }
  }

  @media (max-width: 480px) {
    .btn {
      padding: 0.875rem 1.5rem;
      font-size: 0.875rem;
    }

    .btn-large {
      padding: 1rem 1.75rem;
      font-size: 0.9375rem;
    }
  }
</style>