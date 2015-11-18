// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...

  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }

*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode


// __________________________________________
// Initial Solution


// Pseudocode
// input : an object containing everyone's votes for positions
// output: the results of who won the election in each category
// 1. count votes for each position in voteCount
//    a. for each student in votes
//       1) for each position (i.e. president) add person to the voteCount object in the proper category
// 2. tally the votes for each category
//    a. iterate through voteCount to find the largest values for each category and then return the associated key: that is our winner

// __________________________________________
// Initial Solution

// function initCounter() {
//   for (var students in votes){
//     if (votes.hasOwnProperty(students)){
//       for (var pos in voteCount) {
//         if (voteCount.hasOwnProperty(pos)){
//           voteCount[pos][students] = 0;
//         }
//       }
//     }
//   }
// }

// initCounter();

// for (var students in votes) {
//     if (votes.hasOwnProperty(students)){
//         var obj = votes[students];
//         for (var position in obj) {
//             if (obj.hasOwnProperty(position)){
//                 var name = votes[students][position];
//                 for (var n in voteCount[position]){
//                   if (voteCount[position].hasOwnProperty(n)){
//                     if (n == name) {
//                       voteCount[position][name] += 1;        
//                     }
//                   }
//                 }   
//             }
//         }
//     }
// }

// for (var pos in voteCount) {
//   var maxCount = 0;
//         if (voteCount.hasOwnProperty(pos)){
//           for (var prop in voteCount[pos]){
//             if (voteCount[pos].hasOwnProperty(prop)){
//               if(maxCount <= voteCount[pos][prop]) {
//                 maxCount = voteCount[pos][prop];
//                 officers[pos] = prop;
//               }
//             }

//           }

//         }
// }





// __________________________________________
// Refactored Solution

// Initialize voteCount so that every student is represented
// and given an initial vote count of 0
function initCounter() {
  for (var students in votes){
    if (votes.hasOwnProperty(students)){
      for (var pos in voteCount) {
        if (voteCount.hasOwnProperty(pos)){
          voteCount[pos][students] = 0;
        }
      }
    }
  }
}

initCounter();

// Given a name and a position this will update 
// the vote count for that person for that role
function addVote(name, position){
  for (var n in voteCount[position]){
    if (voteCount[position].hasOwnProperty(n)){
      if (n == name) {
        voteCount[position][name] += 1;
      }
    }
  } 
}

for (var students in votes) {
    if (votes.hasOwnProperty(students)){
        var obj = votes[students];
        for (var position in obj) {
            if (obj.hasOwnProperty(position)){
                var name = votes[students][position];
                addVote(name, position);     
            }
        }
    }
}

for (var pos in voteCount) {
  var maxCount = 0;
        if (voteCount.hasOwnProperty(pos)){
          for (var prop in voteCount[pos]){
            if (voteCount[pos].hasOwnProperty(prop)){
              if(maxCount <= voteCount[pos][prop]) {
                maxCount = voteCount[pos][prop];
                officers[pos] = prop;
              }
            }

          }

        }
}

// __________________________________________
// Reflection

/*
1. What did you learn about iterating over nested objects in JavaScript?

It's not tricky, but you must pay attention to how you reference properties 
of objects. If in doubt, use the square bracket notation to access properties.
This hung us up quite a bit. Once we figured this out then everything else fell into place.

2. Were you able to find useful methods to help you with this?

We used .hasOwnProperty quite a bit. Other than that, there were no methods that 
seemed useful or would shorten our code.

3. What concepts were solidified in the process of working through this challenge?

This challenge solidified accessing properties of objects through both keys and values.

*/




// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)