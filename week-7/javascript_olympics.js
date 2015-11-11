 // JavaScript Olympics

// I paired Aleksandra Nowak with on this challenge.

// This challenge took me [#] hours.


// Warm Up




// Bulk Up

var win = function(athletes){
  
  for (var i = 0; i < athletes.length; i++){
    console.log(athletes[i][0].toString() + ' won the ' + athletes[i][1].toString());
  };
};

var winners = [["Sarah Hughes", "Ladies Singles"],["Pele", "World Cup"]];

win(winners);

// Jumble your words
var reverse = function(string) {
  return string.split("").reverse().join("");
};

console.log(reverse("gravy"))
console.log(reverse("garlic breath"))



// 2,4,6,8

var even = function(numb) {
  var even_int = [];
  var length = numb.length;
  for (var i = 0; i < length; i++) {
    if (numb[i]%2 == 0 ) {
      even_int.push(numb[i]);
    };
  };
  return even_int
};

console.log(even([-1,2,56,77,8989,43456]));

// "We built this city"


var Athlete = function(name, age, sport, quote) {
    this.name = name;
    this.age = age;
    this.sport = sport;
    this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")


console.log(michaelPhelps.constructor === Athlete)

console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)



// Reflection

// 1. What JavaScript knowledge did you solidify in this challenge?

// We can define anonymous functions. The var declaration is important in defining new variables.
// I also feel like I got some good practive using for-loops (which is kind of looked down upon in Ruby).

// 2. What are constructor functions?

// Constructor functions allow you to create new instances of an 'object'. Suppose you want to a constructor for cat,
// then you would define an anonymous function 
// var Cat = function(name, age, breed) {
// 	this.name = name;
// 	this.age = age;
// 	this.breed = breed;
// }

// However, there are no methods associated to Cat. In Javascript, cats do not trip you on staircases.

// 3. How are constructors different from Ruby classes

// JavaScript is not an object oriented language. Therefore there are no Classes of objects with instance varuables and class methods.
// Hence, a constructor behaves like an initialize-method in Ruby, but it is weaker than a Ruby class because constructors do not have 
// associated methods. 

// For example, we can define a constructor for a Dog by specifying its name, age and breed, but we have no way to make this dog bark or 
// beg or play dead. In Ruby, we can a class of Dogs whose instance variables are @name, @agge, @breed and who have methods such as .bark,
// .beg, .play_dead.