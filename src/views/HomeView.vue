<template>
  <div class="home-container">
    <div class="text-center mb-4">
      <h1>Bienvenue sur l'Application de Gestion des Recettes</h1>
      <p class="lead">Découvrez, ajoutez et gérez vos recettes de cuisine préférées.</p>
      <img src="@/assets/recette.jpg" alt="Recettes" class="recette" />
    </div>
    <div class="text-center mt-4">
      <p>Utilisez le menu pour naviguer entre les pages et commencer à ajouter vos recettes.</p>
      <router-link to="/recettes" class="btn btn-primary btn-lg">Voir les Recettes</router-link>
    </div>
  </div>
</template>

<script>
export default {
  name: 'HomeView',
};
</script>

<style scoped>
.home-container {
  max-width: 1000px;
  margin: 0 auto;
  padding: 20px;
}

.text-center {
  text-align: center;
}

.lead {
  font-size: 1rem;
  font-weight: 300;
}

.recette {
  max-width: 70%;
  height: auto;
  margin-top: 20px;
  border-radius: 8px;
}

.btn-lg {
  padding: 10px 20px;
  font-size: 1.125rem;
}
</style>
