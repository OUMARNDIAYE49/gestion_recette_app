<template>
  <div class="container">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <div class="container-fluid">
        <a class="navbar-brand" href="#">Gestion de Recettes</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav">
            <li class="nav-item">
              <router-link to="/" class="nav-link">Accueil</router-link>
            </li>
            <li class="nav-item">
              <router-link to="/recettes" class="nav-link">Liste des Recettes</router-link>
            </li>
            <li class="nav-item">
              <router-link to="/ajouter" class="nav-link">Ajouter Recette</router-link>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <router-view />
  </div>
</template>

<script>
export default {
  name: 'App',
};
</script>

<style>
@import 'bootstrap/dist/css/bootstrap.min.css';
</style>
