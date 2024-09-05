<template>
    <div class="container mt-4">
      <div v-if="recette" class="card mb-4">
        <div class="card-header">
          <h1 class="card-title">{{ recette.titre }}</h1>
        </div>
        <div class="card-body">
          <p><strong>Ingrédients:</strong></p>
          <p>{{ recette.ingredients }}</p>
          <p><strong>Type:</strong> <span class="badge bg-secondary">{{ recette.type }}</span></p>
        </div>
        <div class="card-footer text-end">
          <router-link to="/recettes" class="btn btn-primary">Retour à la liste</router-link>
        </div>
      </div>
      <div v-else class="alert alert-warning">
        Recette non trouvée.
      </div>
    </div>
  </template>
  
  <script>
  import { useRecettesStore } from '@/stores/useRecettesStore';
  import { computed } from 'vue';
  import { useRoute } from 'vue-router';
  
  export default {
    setup() {
      const recettesStore = useRecettesStore();
      const route = useRoute();
      const recetteId = parseInt(route.params.id);
  
      // Trouver la recette en fonction de l'ID
      const recette = computed(() => recettesStore.getRecetteById(recetteId));
  
      return { recette };
    }
  };
  </script>
  
  <style scoped>
  .container {
    max-width: 900px;
  }
  
  .card {
    border-radius: 10px;
  }
  
  .card-header {
    background-color: #f8f9fa;
    border-bottom: 1px solid #dee2e6;
  }
  
  .card-title {
    margin: 0;
    font-size: 1.5rem;
  }
  
  .card-body {
    padding: 1.5rem;
  }
  
  .card-footer {
    background-color: #f8f9fa;
    border-top: 1px solid #dee2e6;
  }
  
  .alert {
    margin-top: 20px;
    font-size: 1.2rem;
  }
  </style>
  