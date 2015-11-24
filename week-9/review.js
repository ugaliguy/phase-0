/*
I am revisiting the credit card verification problem - Challenge 6.7

Pseudocode

Input: A 16-digit number N
Output: true - if N is a valid credit number
		false - otherwise

STEP 1:  READ the number N
		 CHECK that N is a 16-digit number
		 IF NOT throw an error message

STEP 2: REVERSE the digits of N
		Put these digits into an array - call it reverse_digits
		FOR each digit in an even position (i.e the 2nd, 4th, 6th, ... etc)
			Multiply the digit by 2
		RETURN reverse_digits

STEP 3:  Let sum = 0
		 For each digit d in reverse_digits
			if (d > 9)
				sum = sum + (1 + d -10)
			else
				sum = sum + d
		 RETURN sum

STEP 4: IF (sum%10 equals 0)
		 RETURN true
		ELSE
		 RETURN false
*/	

// Initial Solution

// function checkNumber(num) {
// 	var numString = num.toString();
// 	digits = numString.split("");
// 	if (digits.length != 16){
// 		return "Not a valid card number. A valid card number must have 16 digits."
// 	}
// 	reverseDigits = digits.reverse();
// 	checkArray = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15];
// 	for (i = 0; i < checkArray.length; i++){
// 		if (i%2 == 1){
// 			checkArray[i] = 2*Number(reverseDigits[i]);
// 		}
// 		else {
// 			checkArray[i] = Number(reverseDigits[i]);
// 		}
// 	}

// 	var sum = 0;
// 	for (i = 0; i < checkArray.length; i++){
// 		if (checkArray[i] > 9){
// 			sum += (checkArray[i] - 9);			
// 		}
// 		else{
// 			sum += checkArray[i];
// 		}
// 	}

// 	if (sum%10 == 0){
// 		return true;
// 	}
// 	else {
// 		return false;
// 	}
// }



// Refactored Solution

function checkNumber(num) {
	var digits = num.toString().split("");
	if (digits.length != 16){
		return "Not a valid card number. A valid card number must have 16 digits."
	}

	reverseDigits = digits.reverse();
	checkArray = [];
	for (i = 0; i < reverseDigits.length; i++){
		if (i%2 == 1){
			checkArray.push(2*Number(reverseDigits[i]));
		}
		else {
			checkArray.push(Number(reverseDigits[i]));
		}
	}

	var sum = 0;
	for (i = 0; i < checkArray.length; i++){
		if (checkArray[i] > 9){
			sum += (checkArray[i] - 9);			
		}
		else{
			sum += checkArray[i];
		}
	}

	return sum%10 == 0;
}
	// Driver Code
console.log(checkNumber(448041234567901));
console.log(checkNumber(4408041234567901));
console.log(checkNumber(4408041234567906));

/*
1. What concepts did you solidify in working on this challenge? 

I recalled how to access individual digits of a number  by turning it into a string.
I reviewed the for-in loop (and I can go horribly wrong with it).

2. What was the most difficult part of this challenge?

Remembering that I was working in JavaScript and not Ruby.
I couldn't find methods to refactor with.

3. Did you solve the problem in a new way this time?

In my previous solution, I created a whole class for credit cards.
This time, I only built a function that verified whether a number could be a (16 digit) 
credit card number.

4. Was your pseudocode different from the Ruby version? What was the same and what was different?

It was pretty similar. I had to review Challenge 6.7 and the algorithm given almost pseudocodes itself.

*/ 