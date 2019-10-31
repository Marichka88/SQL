
$(document).ready(function() {

    <div class="products"></div>

    <script>

    var products = [

    {id: 1, name: "Tea", price: 50},
    {id: 2, name: "Cup", price: 20},
    {id: 3, name: "Bike", price: 78}

    ];

    var productsHTMLString = "";

    products.forEach(function(product) {


      productsHTMLString += `<h1>${product.name}</h1>`;
      productsHTMLString += `<h5>Price: ${product.price}<h5>`;
    });

    var ProductsTag = document.querySelector(".products");
    productTag.innerHTML = productsHTMLString;
    console.log(productTag);



    // function doSomething(event) {
    //   console.log("X: ", event.clientX, "Y: ", event.clientY);

    //   var xTag = document.querySelector("#x-coordinate");
    //   xTag.innerHTML = event.clientX;
    
    //   var yTag = document.querySelector("#y-coordinate");
    //   yTag.innerHTML = event.clientY;


    //  function doSomethignElse() {
    //     alert("Do do that");
    //  }

    //  var messageTag = document.querySelector(".message");
    //  messageTag.innerHTML = "Message from JavaScript!!!";

    // function hiThere(event) {
    //   console.log("N: ", event.clientN, "M: ", event.clientM);
    //   var nTag = document.querySelector("#n-coordinate");

    //   var mTag = document.querySelector("m-coordinate");


  </script>

</body>
</html>