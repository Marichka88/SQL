

function secondTask() {
  console.log("Second Task Done");
}

function thirdTask() {
console.log("Third Task Done");
}


setTimeout(function() {console.log("First Task Done!") }, 2000);
setTimeout(secondTask,4000);
setTimeout(thirdTask, 6000);

