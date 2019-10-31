var app = new Vue({
  el: "#app",
  // all models must be initialized in the data section before they can be used in the methods of the html
  data: {
    message: "Hello Vue!",
    showInfo: false,
    movies: ["Ready Player One", "Ghostbusters", "In the Army Now"],
    newMovie: ""
  },
  
  methods: {
    changeMessage: function() {
      this.message = "Believe me!!! I can change!!!";
    },
    toggleInfo: function() {
      this.showInfo = !this.showInfo;
    },
    addMovie: function() {
      this.movies.push(this.newMovie);
      this.newMovie = "";
    }
  }
});