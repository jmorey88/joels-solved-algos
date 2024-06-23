// Problem Set 2

// 1. Write a method that takes an array of numbers.If a pair of numbers
// in the array sums to zero, return the positions of those two numbers.
// If no pair of numbers sums to zero, return `nil`.


def two_sum(array)
end

puts("\nTests for #two_sum")
puts("===============================================")
puts(
  'two_sum([1, 3, 5, -3]) == [1, 3]: ' + (two_sum([1, 3, 5, -3]) == [1, 3]).to_s
)
puts(
  'two_sum([1, 3, 5]) == nil: ' + (two_sum([1, 3, 5]) == nil).to_s
)
puts("===============================================")

////// Answer 

function twoSum(ary) {
  for (let indx = 0; indx < ary.length - 1; indx++) {
    for (let indx2 = indx + 1; indx2 < ary.length; indx2++) {
      if (ary[indx] + ary[indx2] == 0) {
        return console.log([indx, indx2])
      }
    }
  }
}

////////////////////
///////////////////

// 2. Write a method that takes an array of numbers in.Your method should
// return the third greatest number in the array.You may assume that
// the array has at least three numbers in it.

def third_greatest(array)
end

puts("\nTests for #third_greatest")
puts("===============================================")
puts(
  'third_greatest([5, 3, 7]) == 3: ' +
  (third_greatest([5, 3, 7]) == 3).to_s
)
puts(
  'third_greatest([5, 3, 7, 4]) == 4: ' +
  (third_greatest([5, 3, 7, 4]) == 4).to_s
)
puts(
  'third_greatest([2, 3, 7, 4]) == 3: ' +
  (third_greatest([2, 3, 7, 4]) == 3).to_s
)
puts("===============================================")

///////// Answer

function thirdGreatest(ary) {
  let sortedAry = []
  let greatest = 0
  let secondGreatest = 0
  let thirdGreatest = 0
  for (let indx = 0; indx < ary.length; indx++) {
    if (ary[indx] > greatest) {
      thirdGreatest = secondGreatest
      secondGreatest = greatest
      greatest = ary[indx]
    }
    else if (ary[indx] > secondGreatest) {
      thirdGreatest = secondGreatest
      secondGreatest = ary[indx]
    }
    else if (ary[indx] > thirdGreatest) {
      thirdGreatest = ary[indx]
    }
  }
  return console.log(thirdGreatest)
}

///////////////////
/////////////////

// 3. Write a method that takes in a array of letters.Your method should
// return the most common letter in the array, and a count of how many
// times it appears.

def most_common_letter(array)
end

puts("\nTests for #most_common_letter")
puts("===============================================")
puts(
  'most_common_letter("abca".split("")) == ["a", 2]: ' +
  (most_common_letter('abca'.split("")) == ['a', 2]).to_s
)
puts(
  'most_common_letter("abbab".split("")) == ["b", 3]: ' +
  (most_common_letter('abbab'.split("")) == ['b', 3]).to_s
)
puts("===============================================")

// 4. Write a method that takes in an integer(greater than one) and
// returns true if it is prime; otherwise return false.

// You may want to use the `%` modulo operation. `5 % 2` returns the
// remainder when dividing 5 by 2; therefore, `5 % 2 == 1`.In the case
// of`6 % 2`, since 2 evenly divides 6 with no remainder, `6 % 2 == 0`.
// More generally, if `m` and `n` are integers, `m % n == 0` if and only
// if `n` divides `m` evenly.

def is_prime ? (integer)
end

puts("\nTests for #is_prime?")
puts("===============================================")
puts('is_prime?(2) == true: ' + (is_prime ? (2) == true).to_s)
puts('is_prime?(3) == true: ' + (is_prime ? (3) == true).to_s)
puts('is_prime?(4) == false: ' + (is_prime ? (4) == false).to_s)
puts('is_prime?(9) == false: ' + (is_prime ? (9) == false).to_s)
puts("===============================================")

// 5. Write a method that returns the `n`th prime number.Recall that only
// numbers greater than 1 can be prime.

def nth_prime(interger)
end

puts("\nTests for #nth_prime")
puts("===============================================")
puts('nth_prime(1) == 2: ' + (nth_prime(1) == 2).to_s)
puts('nth_prime(2) == 3: ' + (nth_prime(2) == 3).to_s)
puts('nth_prime(3) == 5: ' + (nth_prime(3) == 5).to_s)
puts('nth_prime(4) == 7: ' + (nth_prime(4) == 7).to_s)
puts('nth_prime(5) == 11: ' + (nth_prime(5) == 11).to_s)
puts("===============================================")



// 6. Write a method that returns the `n`th prime number.Recall that only
// numbers greater than 1 can be prime.


// 7. Write a method that returns the `n`th prime number.Recall that only
// numbers greater than 1 can be prime.

  nthPrime(1) == 2
nthPrime(2) == 3
nthPrime(3) == 5
nthPrime(4) == 7
nthPrime(5) == 11
