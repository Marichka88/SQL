<template>
  <div class="foods-show">
    <h1>{{ food.name }}</h1>
    <h5>Energy: {{ food.energy }}</h5>
    <h5>Fat: {{ food.fat }}</h5>
    <h5>Saturated Fat: {{ food.saturated_fat }}</h5>
    <h5>Sugar: {{ food.sugar }}</h5>
    <h5>Sodium: {{ food.sodium }}</h5>
    <h5>Default Filter {{ food.default_filter }}</h5>

    <div>
      <router-link v-bind:to=" '/foods/' + food.id + '/edit' ">Edit</router-link>
      <button v-on:click="destroyFood()">Destroy</button>
    </div>
  </div>
</template>

<style>
</style>

<script>
var axios = require('axios');
export default {
  data: function() {
    return {
      food: {
        id: "",
        name: "",
        energy: "",
        fat: "",
        saturated_fat: "",
        sugar: "",
        sodium: "",
        default_filter: ""
      }
    };
  },
  created: function() {
    axios
      .get("/api/foods/" + this.$route.params.id)
      .then(response => {
        this.food = response.data;
      });
  },
  methods: {
    destroyFood: function() {
      axios
        .delete("/api/foods/" + this.food.id)
        .then(response => {
          this.$router.push("/");
        });
    }
  }
};
</script>