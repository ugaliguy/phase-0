// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var black = 331
undefined
var metal = 335
undefined
black + metal
666 

// Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with 
//"Hey! That's my favorite too!" (You will probably need to run this in the Chrome console (Links to an external site.) rather 
//than node since node does not support prompt or alert). Paste your program into the eloquent.js file.

prompt("What is your favorite food?", "...");
"Linguica"
alert("That is mine too! Now, give me your subway tokens!");
undefined


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

// Looping a triangle

var thing = '#'
undefined
for (i = 1; i < 10 ; i++) {
	console.log(thing); 
	thing += "#";
}

// FizzBuzz

for (i = 1; i <= 100 ; i++){
  if (i%3==0 && i%5!=0) {
  	console.log("Fizz");
  }
  else if (i%3!=0 && i%5==0) {
  	console.log("Buzz");
  }
  else if (i%3==0 && i%5==0) {
  	console.log("FizzBuzz");
  }
  else {
  	console.log(i)
  }
}

// Chess Board

var size = 8;
var i = 0;
var j = 0;
var thing1 = ' #';
var thing2 = '# ';
for (j = 1; j <= size/2-1; j++) {
    thing1 += ' #';
    }
    for (j = 1; j <= size/2-1; j++) {
    thing2 += '# ';
    }
for (i = 1; i <= size/2 ; i++){
  if (i%2 == 1) {
    console.log(thing1);    
  }
  else {
    if (i%2 == 0) {
    console.log(thing2);
  }
}
}

// Functions

// Complete the `minimum` exercise.

var min = function(x,y) {
  if (x < y) {
    return x;
  }
  else {
  	return y;
  }  
};

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: Chrid,
  age: "I'm still alive.",
  favoriteFoos: ["Linguica","limes", "rice"],
  quirk: "middle-aged metalhead"
};

console.log(me.quirk);
middle-aged metalhead
undefined



