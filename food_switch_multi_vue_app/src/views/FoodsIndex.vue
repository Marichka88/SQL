<template>
  <div class="foods-index">
    <h1>All Foods</h1>
    <div v-for="food in foods">

  

      <router-link v-bind:to="'/foods/' + food.id">
        <h2>{{ food.name }}</h2>
      </router-link>
    </div>
  </div>
</template>

<style>
img {
  width: 250px;
}
</style>

<script>
var axios = require('axios');
export default {
  data: function() {
    return {
      foods: []
    };
  },
  created: function() {
    axios
      .get("/api/foods")
      .then(response => {
        this.foods = response.data;
      });
  },
  methods: {}
};
</script>