<template>
    <div class="container">
      <h2>{{ isEditMode ? 'Modifier une Recette' : 'Ajouter une Nouvelle Recette' }}</h2>
      <form @submit.prevent="handleSubmit">
        <div class="mb-3">
          <label for="titre" class="form-label">Titre de la Recette</label>
          <input
            type="text"
            id="titre"
            v-model="recette.titre"
            class="form-control"
            required
          />
        </div>
        <div class="mb-3">
          <label for="ingredients" class="form-label">Ingrédients</label>
          <textarea
            id="ingredients"
            v-model="recette.ingredients"
            class="form-control"
            rows="3"
            required
          ></textarea>
        </div>
        <div class="mb-3">
          <label for="type" class="form-label">Type de Recette</label>
          <select id="type" v-model="recette.type" class="form-select" required>
            <option value="Entrée">Entrée</option>
            <option value="Plat">Plat</option>
            <option value="Dessert">Dessert</option>
          </select>
        </div>
        <button type="submit" class="btn btn-primary">
          {{ isEditMode ? 'Modifier la Recette' : 'Ajouter la Recette' }}
        </button>
      </form>
    </div>
  </template>
  
  <script>
  import { useRecettesStore } from '@/stores/useRecettesStore';
  import { ref, computed } from 'vue';
  import { useRouter } from 'vue-router';
  
  export default {
    props: {
      recetteIndex: {
        type: Number,
        default: null,
      },
    },
    setup(props) {
      const recettesStore = useRecettesStore();
      const router = useRouter();
      
      const isEditMode = computed(() => props.recetteIndex !== null);
  
      const recette = ref(
        isEditMode.value
          ? { ...recettesStore.recettes[props.recetteIndex] }
          : { titre: '', ingredients: '', type: '' }
      );
  
      const handleSubmit = () => {
        if (isEditMode.value) {
          recettesStore.modifierRecette(props.recetteIndex, recette.value);
        } else {
          recettesStore.ajouterRecette(recette.value);
        }
        router.push('/');
      };
  
      return { recette, handleSubmit, isEditMode };
    },
  };
  </script>
  
  <style>
  /* Ajoute ici des styles personnalisés si nécessaire */
  </style>
  