// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: 
// Overall mission:Banish the Demon
// Goals:  Avoid possession by the Demon and pick up the amulat
// Characters: Player, Demon
// Objects: Player, Demon, Ammulet
// Functions: For the player: moveUp, moveDown, moveRight, moveLeft
//            For the demon: move and taunt

// Pseudocode
// Create a Player object that will have an initil position and will not be possessed by the Demon.
// Add a function to Player to make it move up, down, left or right.
// Create a 'Demon object and give it a random position.
// Create an Amulet object and give it a random position.
// Move the player. 
// Assign another random position to the Demon.
// Demon taunts the player
//
// Check where Player is with respect to the Demon and the Amulet:
//   IF Player position = Amulet position, then Demon is banished and Player wins.
//   ELSE IF the Player position is within circle centered around Demon, then player is possessed and loses.
//   (note that if Amulet and Player are within the Demon's radius then Player is still Possessed and loses)
//   ELSE Player and Demon move again.
//




// Initial Code

// var player = {
// xPos: 0,
// yPos: 0,
// hasAmulet: false,
// possessed: false,

// move: function(direction) {
//   if(direction === 'right'){
//     this.xPos += 5;
//   }
//   else if(direction === 'left'){
//     this.xPos -= 5;
//   }
//   else if(direction === 'up'){
//     this.yPos += 5;
//   }
//   else if(direction === 'down'){
//     this.yPos -= 5;
//   }
// //when Player moves, Demon moves too
//   demon.xPos = Math.floor((Math.random()*25)+1);
//   demon.yPos = Math.floor((Math.random()*25)+1);
//   // console.log("Demon's position is " + demon.xPos + "," + demon.yPos);

// //Display where player is
// if(this.hasAmulet == false && this.possessed == false && demon.banished == false){
// console.log("Player's position is " + this.xPos + "," + this.yPos);
// }
// //After every move, check if the Player is near the Demon or the Amulet
// var xChange = this.xPos - demon.xPos;
// var yChange = this.yPos - demon.yPos;
// var xAmulet = this.xPos - amulet.xPos;
// var yAmulet = this.yPos - amulet.yPos;
// // var rSquared = demon.radius*demon.radius;

// if(xAmulet*xAmulet + yAmulet*yAmulet <= 5){
//     this.hasAmulet = true;
//     demon.banished = true;
//     console.log("You found the amulet. You win!!");
//     return;
// }
// else if(xChange*xChange + yChange*yChange <= 3){
//   this.possessed = true;
//   console.log("You are possesed by the Demon. You lose!");
//   return;
// }
// else if (this.hasAmulet == false && this.possessed == false && demon.banished == false) {
// 	  demon.xPos = Math.floor((Math.random()*25)+1);
//     demon.yPos = Math.floor((Math.random()*25)+1);
//     console.log("Demon's position is " + demon.xPos + "," + demon.yPos);
//   }
// }

// };

// var amulet = {
// xPos: Math.floor((Math.random()*25)+1),
// yPos: Math.floor((Math.random()*25)+1),
// };

// var demon = {
// radius: 10,
// xPos: Math.floor((Math.random()*25)+1),
// yPos: Math.floor((Math.random()*25)+1),
// banished: false,
// taunt: function(direction) {
//   if(direction === 'right' && this.banished === false && player.possessed === false){
//     console.log("Your mother died two years before you were born and your father one year later!");
//   }
//   else if(direction === 'left' && this.banished === false && player.possessed === false){
//     console.log("Your sister invented crab shampoo!");
//   }
//   else if(direction === 'up' && this.banished === false && player.possessed === false){
//     console.log("You smell like an anchovey pizza in a leather bar!");
//   }
//   else if(direction === 'down' && this.banished === false && player.possessed === false){
//     console.log("Your grandfather get his haircuts in Hackensack!");
//   }
//   }
// };

//  do {
//   var directions = ["up", "down", "left", "right"];
//   if (player.xPos >= 25 && demon.banished === false) {
//       player.move('left');
//       demon.taunt('left');
//   }
//   else if (player.yPos >= 25 && demon.banished === false) {
//       player.move('down');
//       demon.taunt('down');
//   }
//   else if (player.xPos*player.yPos >= 0 && demon.banished === false) {
//       player.move('up');
//       demon.taunt('up');
//       player.move('right');
//       demon.taunt('right');
//   }
//   else if (demon.banished === false) {
//       var direction = directions[Math.floor(Math.random()*4)];
//       player.move(direction);   
//       demon.taunt(direction); 
//   }

// } while (player.hasAmulet == false && player.possessed == false && demon.banished == false)

// Refactored Code

var player = {
xPos: 0,
yPos: 0,
hasAmulet: false,
possessed: false,

move: function(direction) {
  if(direction === 'right'){
    this.xPos += 5;
  }
  else if(direction === 'left'){
    this.xPos -= 5;
  }
  else if(direction === 'up'){
    this.yPos += 5;
  }
  else if(direction === 'down'){
    this.yPos -= 5;
  }
//when Player moves, Demon moves too

  demon.move();

//After every move, check if the Player is near the Demon or the Amulet

var xChange = this.xPos - demon.xPos;
var yChange = this.yPos - demon.yPos;
var xAmulet = this.xPos - amulet.xPos;
var yAmulet = this.yPos - amulet.yPos;

if(xAmulet*xAmulet + yAmulet*yAmulet <= 5){
    this.hasAmulet = true;
    demon.banished = true;
    console.log("You found the amulet. You win!");
    return;
}
else if(xChange*xChange + yChange*yChange <= 3){
  this.possessed = true;
  console.log("You are possesed by the Demon. You lose!");
  return;
}
else if (this.hasAmulet === false && this.possessed === false && demon.banished === false) {
    console.log("Player's position is " + this.xPos + "," + this.yPos);
    demon.move();
    console.log("Demon's position is " + demon.xPos + "," + demon.yPos);
  }
}

};

var amulet = {
xPos: Math.floor((Math.random()*25)+1),
yPos: Math.floor((Math.random()*25)+1),
};

var demon = {
radius: 10,
xPos: Math.floor((Math.random()*25)+1),
yPos: Math.floor((Math.random()*25)+1),
banished: false,
taunt: function(direction) {
  var tauntBool = this.banished === false && player.possessed === false;
  if(direction === 'right' && tauntBool){
    console.log("Your mother died two years before you were born and your father one year later!");
  }
  else if(direction === 'left' && tauntBool){
    console.log("Your sister invented crab shampoo!");
  }
  else if(direction === 'up' && tauntBool){
    console.log("You smell like an anchovey pizza in a leather bar!");
  }
  else if(direction === 'down' && tauntBool){
    console.log("Your grandfather get his haircuts in Hackensack!");
  }
  },
move: function() {
    this.xPos = Math.floor((Math.random()*25)+1);
    this.yPos = Math.floor((Math.random()*25)+1);
  }

};

// This is driver code to test if the game works.
// I did not have time to complete Release 6.

 do {
  var directions = ["up", "down", "left", "right"];
  if (player.xPos >= 25 && demon.banished === false) {
      player.move('left');
      demon.taunt('left');
  }
  else if (player.yPos >= 25 && demon.banished === false) {
      player.move('down');
      demon.taunt('down');
  }
  else if (player.xPos*player.yPos >= 0 && demon.banished === false) {
      player.move('up');
      demon.taunt('up');
      player.move('right');
      demon.taunt('right');
  }
  else if (demon.banished === false) {
      var direction = directions[Math.floor(Math.random()*4)];
      player.move(direction);   
      demon.taunt(direction); 
  }

} while (player.hasAmulet == false && player.possessed == false && demon.banished == false)




// Reflection

// 1. What was the most difficult part of this challenge?

// For me, it was trying to come up with functions. Also, it took me a while to straighten out my logic - e.g.
// To not have the player and demon positions updated after the game was over.

// 2. What did you learn about creating objects and functions that interact with one another?

// I'm not sure that I did learn anything new. I think this was well-covered in challenge 7.4.

// 3. Did you learn about any new built-in methods you could use in your refactored solution? 
//    If so, what were they and how do they work?

// I tried to refactor this, but couldn't see what could be streamlined.
// I looked into using some fancier math (i.e. trigonometry) for the circle-calculations,
// but decided that wouldn't necessarily improve the ocde or make it more readable.
   
// 4. How can you access and manipulate properties of objects?
   
//    Given an object called exampleObject, if we want to access a property called prop, we could use 
//    either exampleObject.prop or exampleObject["prop"].