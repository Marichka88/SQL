var app = new Vue({
  el: '#app',
  data: {
    message: "Hello Vue.js! and other things",
    name: "Josh",
    city: "Chicago",
    school: "Actualize",
    country: "USA",
    last_name: "Nixon",
    job_title: "Web developer",
    favorite_color: "yellow"

  },
  methods: {
    changeMessage: function() {
      this.message = "Whoa";
    },
    changeName: function() {
      this.name = "Nick";
    }

  }
});