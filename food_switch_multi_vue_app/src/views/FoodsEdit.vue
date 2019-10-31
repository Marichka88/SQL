<template>
  <div class="foods-edit">
    <h1>Edit Food</h1>
    <ul>
      <li v-for="error in errors">{{ error }}</li>
    </ul>

    <form v-on:submit.prevent="submit()">
      <div>
        Name: <input type="text" v-model="food.name">
      </div>

      <div>
        Energy: <input type="integer" v-model="food.energy">
      </div>

      <div>
        Fat: <input type="integer" v-model="food.fat">
      </div>

      <div>
        Saturated Fat: <input type="integer" v-model="food.saturated_fat">
      </div>

      <div>
        Sugar: <input type="integer" v-model="food.sugar">
      </div>

      <div>
        Sodium: <input type="integer" v-model="food.sodium">
      </div>

      <div>
        Default Filter: <input type="integer" v-model="food.default_filter">

      </div>

      <input type="submit" value="Update">
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
      food: {}
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
    submit: function() {
      var clientParams = this.food;
      axios
        .patch("/api/foods/" + this.$route.params.id, clientParams)
        .then(response => {
          this.$router.push("/foods/" + response.data.id);
        })
        .catch(error => {
          this.errors = error.response.data.errors;
        });
    }
  }
};
</script>