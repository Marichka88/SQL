<template>
  <div class="home">
    <h1>New Product</h1>

      <ul>
        <li v-for="error in errors">{{ error }}</li>
      </ul>

      <div>
        Name: <input type="text" v-model="newProductName">
      </div>

      <div>
        Price: <input type="integer" v-model="newProductPrice">
      </div>

      <div>
        Description: <input type="text" v-model="newProductDescription">
      </div>

      <div>
        Image_url: <input type="text" v-model="newProductImageUrl">
      </div>

     <button v-on:click="createProduct()">Create</button>
    </div> <!-- end of .new-form-section -->

    <div class="index-section">
      <h1>All Products</h1>

      <div v-for="product in products">
        <h2>{{ product.name }}</h2>
        <p>Description: {{ product.descriptions }}</p>
        <p>Image_url: {{ product.image_url }}</p>
        
        <img v-bind:src="product.image_url">
        <div class="destroy-section">
          <button v-on:click="destroyProduct(product)">Destroy</button>
        </div>
        <br>
      </div>
    </div> <!-- end of .index-section -->

  </div>
</template>

<style>
img {
    width: 250px;
    }
</style>


<script>
var axios = require("axios");

export default {
  data: function() {
      return {
      message: [],
      products: [],
      errors: [],
      newProductPrice: "",
      newProductName: "",
      newProductDescription: "",
      newProductImageUrl: "",
      currentProduct: {}
    };
  },
  created: function() {
    axios
      .get("/api/products")
      .then(response => {
        this.products = response.data;
      });
  },
  methods: {
    destroyProduct: function(productObject) {
      axios
        .delete("/api/products/" + productObject.id)
        .then(response => {
          var index = this.products.indexOfproductObject);
          this.products.splice(index, 1);
        });
    },
    updateProduct: function(productObject) {
      var clientParams = {
        name: productObject.name,
        price: productObject.price,
        description: productObject.description,
        image_url: productObject.image_url
      };
      axios
        .patch("/api/products/" + productObject.id, clientParams)
        .then(response => {
          console.log("Success", response.data);
        });
    },
    showProduct: function(productObject) {
      if (this.currentProduct !== productObject) {
        this.currentProduct = productObject;
      } else {
        this.currentProduct = {};
      }
    },
    createProduct: function() {
      console.log("Create the product...");
      var clientParams = {
        name: this.newProductName,
        description: this.newProductDescription,
        price: this.newProductPrice,
        image_url: this.newProductImageUrl
      };
      axios
        .post("/api/products", clientParams)
        .then(response => {
          console.log("success", response.data);
          this.products.push(response.data);
          this.errors = [];
          this.newProductName = "";
          this.newProductPrice = "";
          this.newProductImageUrl = "";
        })
        .catch(error => 
          this.errors = error.response.data.errors;
        });
    };
</script>