// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with Chris Miklius .

// Pseudocode



// DEFINE method separateComma, which takes as input an integer, and RETURNs a comma separated integer as a string.

// IF the given integer is 3 digits or less, simply change it to a string and RETURN it.

// ELSE convert the integer to an array, where each element is a digit.

// REVERSE the array

// Establish a counter that is equal to 0

// WHILE counter < the array length, keep going through the loop

// Starting from the beginning of the array, insert a comma after every 3 digits

// After a comma is inserted, increment the counter by 3


// If the array length is a multiple of 3, delete the extra comma at the beginning, combine the array elements into a string, and revesre it back

// ELSE combine the elements into a string and REVERSE it back



// Initial Solution

var separateCommas = function(x) {
  var s =x.toString();
  if (x < 1000) {
      return s;
  }
  else {
   var counter = 2;
   var digits = s.split(['']);
   var rd = digits.reverse();
    var rdl= rd.length;
    while (counter < rdl){
      console.log(counter);
          rd[counter] = ',' + rd[counter].toString();
           counter = counter + 3;
           console.log(rd);
    }
    if (rdl % 3 == 0){
    rd[rdl - 1] = rd[rdl-1].replace(",","");
    rd.reverse();
    var stringint = rd.join(['']);
    return stringint;
    }
    else {
    rd.reverse();
    var stringint = rd.join(['']);
    return stringint;
    }
  }
}


// Refactored Solution

var separateCommas = function(x) {
  var s =x.toString();
  if (x < 1000) {
      return s;
  }
  else {
   var digits = s.split(['']);
   var rd = digits.reverse();
    var rdl= rd.length;
   for (var counter = 2; counter <= rdl; counter = counter + 3){
          rd[counter] = ',' + rd[counter].toString();     
}
    if (rdl % 3 == 0){
    rd[rdl - 1] = rd[rdl-1].replace(",","");
    rd.reverse();
    var stringint = rd.join(['']);
    return stringint;
    }
    else {
    rd.reverse();
    var stringint = rd.join(['']);
    return stringint;
    }
  }
}


// Your Own Tests (OPTIONAL)

console.log(separateCommas(123));
console.log(separateCommas(123456789));
console.log(separateCommas(1234567891011666));


// Reflection



// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

// We had to get used to different syntax, but otherwise no surprises. 
// We did not approach the problem any differently.
// Afterall, it is the pseudo-code that determines the solution, not the language.


// What did you learn about iterating over arrays in JavaScript?

// It's not much different than Ruby, except that there are no nice enumerators like .each in Javascript.


// What was different about solving this problem in JavaScript?

// We had to pay careful attentionn to syntax, but otherwise the pseudo-code determined the solution.


// What built-in methods did you find to incorporate in your refactored solution?

// We used .split(), .toString(), .replace(), and .join().
// We also found a way to replace a while-loop with a cleaner for-loop.
