var app = new Vue({
  el: "#app",
  data: {
    message: "Hello Vue!",
    targetNumber: 42,
    guess:null
  },

  methods: {

    checkGuess: function() {

      if (this.guess > this.targetNumber) {
        this.message="Too High";
      }
    }
  }
});