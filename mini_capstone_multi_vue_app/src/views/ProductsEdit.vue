<template>
  <div class="products-edit">
    <h1>Edit Product</h1>
    <ul>
      <li v-for="error in errors">{{ error }}</li>
    </ul>

    <form v-on:submit.prevent="submit()">
      <div>
        Name: <input type="text" v-model="product.name">
      </div>

      <div>
        Price: <input type="text" v-model="product.price">
      </div>

      <div>
        Description: <input type="text" v-model="product.description">
      </div>

      <div>
        Image URL: <input type="text" v-model="product.image_url">
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
      product: {}
    };
  },
  created: function() {
  axios
      .get("/api/products/" + this.$route.params.id)
      .then(response => {
        this.product = response.data;
      });
  },
    methods: {
    submit: function() {
      var clientParams = this.product;

      axios
        .post("/api/products" + this.$route.params.id, clientParams)
        .then(response => {
          this.$router.push("/products/" + response.data.id);
        })
        .catch(error => {
          this.errors = error.response.data.errors;
        });
    }
  }
};
</script>


  }
};
</script>