<template>
  <div class="products-index">
    <h1>All Products</h1>
    <div v-for="product in products">
      <h2>{{ product.name }}</h2>
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