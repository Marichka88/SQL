console.log("they are connected");


axios
  .get("http://localhost:3000/api/recipes")
  .then(function(response) {

console.log(response.data);
});
