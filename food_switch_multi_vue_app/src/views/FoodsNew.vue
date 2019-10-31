<template>
  <div class="foods-new">
    <h1>New Food</h1>
    <ul>
      <li v-for="error in errors">{{ error }}</li>
    </ul>

    <form v-on:submit.prevent="submit()">
      <div>
        Name: <input type="text" v-model="newFoodName">
      </div>

      <div>
        Energy: <input type="integer" v-model="newFoodEnergy">
      </div>

      <div>
        Fat: <input type="integer" v-model="newFoodFat">
      </div>

      <div>
        Saturated Fat: <input type="integer" v-model="newFoodSaturatedFat">
      </div>

      <div>
        Sugar: <input type="integer" v-model="newFoodSugar">
      </div>

      <div>
        Sodium: <input type="integer" v-model="newFoodSodium">
      </div>
      
      <div>
        Default Filter: <input type="integer" v-model="newFoodDefaultFilter">
      </div>

      <input type="submit" value="Create">
    </form>
  </div>
</template>

<style>
</style>

<script>
var axios = require("axios");
export default {
  data: function() {
    return {
      errors: [],
      newRecipeTitle: "",
      newRecipeChef: "",
      newRecipePrepTime: "",
      newRecipeIngredients: "",
      newRecipeDirections: "",
      newRecipeImageUrl: ""
    };
  },
  created: function() {},
  methods: {
    submit: function() {
      var clientParams = {
        title: this.newRecipeTitle,
        chef: this.newRecipeChef,
        prep_time: this.newRecipePrepTime,
        ingredients: this.newRecipeIngredients,
        directions: this.newRecipeDirections,
        image_url: this.newRecipeImageUrl
      };
      axios
        .post("/api/recipes", clientParams)
        .then(response => {
          this.$router.push("/");
        })
        .catch(error => {
          this.errors = error.response.data.errors;
        });
    }
  }
};
</script>