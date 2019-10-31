<template>
  <div class="home">
    <h1>{{ Welcome to Contacts App }}</h1>

    <div class="new-form-section">
      <h1>New Contact</h1>
      <ul>
        <li v-for="error in errors">{{ error }}</li>
      </ul>

      <div>
        First Name: <input type="text" v-model="newContactFirstName">
      </div>

      <div>
        Last Name: <input type="text" v-model="newContactLastName">
      </div>

      <div>
        Email: <input type="text" v-model="NewContactEmail">
      </div>

      <div>
        Phone Number: <input type="text" v-model="NewContactsPhoneNumber">
      </div>

       <button v-on:click="createContact()">Create</button>
    </div> <!-- end of .new-form-section -->

    <div class="index-section">
      <h1>All Contacts</h1>

      <div v-for="contact in contacts">
        <h2>{{ contact.first_name }}</h2>
        <img v-on:click="showContact(contact)" v-bind:src="contact.image_url">

        <div v-if="contact === currentContact">
          <p>First_name: {{ contact.first_names }}</p>
          <p>Last_name: {{ contact.last_names }}</p>

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
      contacts: [],
      errors: [],
      last_names: "",
      first_names: "",
      email: "",
      phone_number: ""
     
    };
  },
</script>

<script>
export default {
  data: function() {
    return {
      contacts: [],
      errors: [],
      newContactsLastName: "",
      newContactsFirstName: "",
      newContactsEmail: "",
      newContactsPhoneNumber: ""
    };
  },
  created: function() {
    axios
      .get("/api/contacts")
      .then(response => {
        this.contacts = response.data;
      });
  },
  methods: {

      createContact: function() {
      console.log("Create the contact...");
      var clientParams = {
        last_name: this.newContactsLastName,
        first_name: this.newContactsFirstName,
        email: this.newContactsEmail,
        phone_number: this.phone_number
      };
  }
};
</script>