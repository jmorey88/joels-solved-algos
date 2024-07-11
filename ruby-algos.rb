#coderbyte problems

#Find Intersection
#Have the function FindIntersection(strArr) read the array of strings stored in 
#strArr which will contain 2 elements: the first element will represent a list of 
#comma-separated numbers sorted in ascending order, the second element will represent 
#a second list of comma-separated numbers (also sorted). Your goal is to return a 
#comma-separated string containing the numbers that occur in elements of strArr in 
#sorted order. If there is no intersection, return the string false.
# Examples
# Input: ["1, 3, 4, 7, 13", "1, 2, 4, 13, 15"]
# Output: 1,4,13
# Input: ["1, 3, 9, 10, 17, 18", "1, 4, 9, 10"]
# Output: 1,9,10 


def FindIntersection(strArr)
  ary1 = strArr[0].split(", ")
  ary2 = strArr[1].split(", ")
  intersectArr = []

  ary1.split(", ").each do |num1|
    ary2.split(", ").each do |num2|
      if num1 == num2
        intersectArr.push num1
      end
    end
  end 

  if intersectArr.length == 0
    print nill
  else print intersectArr.join(", ")
  end
end

# having issues with the number of arguments

# //////////////////////////////////////////

# problem 2

# Questions Marks
# Have the function QuestionsMarks(str) take the str string parameter, which 
# will contain single digit numbers, letters, and question marks, and check if 
# there are exactly 3 question marks between every pair of two numbers that add 
# up to 10. If so, then your program should return the string true, otherwise it 
# should return the string false. If there aren't any two numbers that add up to 
# 10 in the string, then your program should return false as well.

# For example: if str is "arrb6???4xxbl5???eee5" then your program should return 
# true because there are exactly 3 question marks between 6 and 4, and 3 question
#  marks between 5 and 5 at the end of the string.
# Examples
# Input: "aa6?9"
# Output: false
# Input: "acc?7??sss?3rr1??????5"
# Output: true 


# def QuestionsMarks(str)
#   added = []
#   str = str.gsub(/[a-zA-Z]/, '')
#   str = str.delete! "abcdefghijklmnopqrstuvwxyz"
#   (0..str.length-1).each do |i|
#     if str[i].to_i + str[i+1].to_i == 10
#       return false
#     elsif str[i].to_i + str[i+2].to_i == 10
#       return false
#     elsif str[i].to_i + str[i+3].to_i == 10
#       return false
#     elsif str[i].to_i + str[i+4].to_i == 10
#       added << [str[i], str[i+4]]
#       if str[i+1] != '?' and str[i+2] != '?' and str[i+3] != '?'
#         return false
#       end
#     end
#   end
#   added == [] ? false : true
# end

puts QuestionsMarks("arrb6???4xxbl5???eee5")

# /////////////////////////////
# problem 3
# Longest Word
# Have the function LongestWord(sen) take the sen parameter being 
# passed and return the longest word in the string. If there are 
# two or more words that are the same length, return the first word 
# from the string with that length. Ignore punctuation and assume 
# sen will not be empty. Words may also contain numbers, for example 
# "Hello world123 567"

# Examples
# Input: "fun&!! time"
# Output: time
# Input: "I love dogs"
# Output: love 

def LongestWord(sen)
  wrd_ary = []
  longst_wrd = []
  new_wrd = []
  word_lgth = 0
  sen.split("").each do |char|
    if ("a".."z") === char || char == " "
    then wrd_ary.push(char)
    else nil 
    end
  end
  wrd_ary.join.split(" ").each do |wrd|
    new_wrd.push(wrd)
    if wrd.length > word_lgth
      word_lgth = wrd.length
      longst_wrd.replace(new_wrd)
      new_wrd.clear
    end
  end

  puts longst_wrd    
  
end

# ////////////////////////////
# problem 3

# First Factorial
# Have the function FirstFactorial(num) take the num parameter being passed 
# and return the factorial of it. For example: if num = 4, then your program
# should return (4 * 3 * 2 * 1) = 24. For the test cases, the range will be 
# between 1 and 18 and the input will always be an integer.
# Examples
# Input: 4
# Output: 24
# Input: 8
# Output: 40320 

def FirstFactorial(num)
  range = (2..num)
  fact = 1
  range.each do |i|
    fact = i * fact
  end
  print fact
end

# //////////////
# problem 4

# First Reverse
# Have the function FirstReverse(str) take the str parameter being passed 
# and return the string in reversed order. For example: if the input string is 
# "Hello World and Coders" then your program should return the string sredoC dna dlroW olleH.
# Examples
# Input: "coderbyte"
# Output: etybredoc
# Input: "I Love Code"
# Output: edoC evoL I 

def FirstReverse(str)
    new_str = []
      str.each_char do |l|
      new_str.unshift(l)
      end
    new_str.join('')
    # new_str.join('').to_s
    end
    
puts FirstReverse(STDIN.gets)


# ////////////////////
# problem 5

# Letter Changes
# Have the function LetterChanges(str) take the str parameter being passed and 
# modify it using the following algorithm. Replace every letter in the string with t
# he letter following it in the alphabet (ie. c becomes d, z becomes a). Then capitalize 
# every vowel in this new string (a, e, i, o, u) and finally return this modified string.
# Examples
# Input: "hello*3"
# Output: Ifmmp*3
# Input: "fun times!"
# Output: gvO Ujnft! 

def LetterChanges(str)
  adjusted = []
  str.each_char do |char|
    if char.ord <97 || char.ord >122
      adjusted << char
    elsif char.ord == 122
      adjusted << "A"
    elsif (char.ord + 1) == 97 || (char.ord + 1) == 101 || (char.ord + 1) == 105 || (char.ord + 1) == 111 || (char.ord + 1) == 117
      adjusted << (char.ord + 1).chr.upcase
    else adjusted << (char.ord + 1).chr
    end 
  end
  adjusted.join
end

# //////////////////
# problem 6

# Simple Adding
# Have the function SimpleAdding(num) add up all the numbers from 1 to num. 
# For example: if the input is 4 then your program should return 10 because 
# 1 + 2 + 3 + 4 = 10. For the test cases, the parameter num will be any number from 1 to 1000.
# Examples
# Input: 12
# Output: 78
# Input: 140
# Output: 9870 

def SimpleAdding(num)
  i = 1
  answer = 0
 while i <= num
   answer += i
   i += 1
 end 
end

def SimpleAdding(num)
  answer = 0
  (1..num).each do |i|
    answer += i 
  end
  answer 
end

# //////////////////
# problem 7

# Letter Capitalize
# Have the function LetterCapitalize(str) take the str parameter being passed 
# and capitalize the first letter of each word. Words will be separated by only one space.
# Examples
# Input: "hello world"
# Output: Hello World
# Input: "i ran there"
# Output: I Ran There 

def LetterCapitalize(str)
  str.split.map do |wrd|
    wrd.capitalize
  end.join(" ")
end

# /////////////////////
#  problem 8

# Simple Symbols
# Have the function SimpleSymbols(str) take the str parameter being passed 
# and determine if it is an acceptable sequence by either returning the string true 
# or false. The str parameter will be composed of + and = symbols with several characters 
# between them (ie. ++d+===+c++==a) and for the string to be true each letter must be 
# surrounded by a + symbol. So the string to the left would be false. The string will not 
# be empty and will have at least one letter.
# Examples
# Input: "+d+=3=+s+"
# Output: true
# Input: "f++d+"
# Output: false 

def SimpleSymbols(str)
  (0..str.length - 1).each do |i|
    if ("a".."z") === str[i] 
      if str[i-1] != "+" || str[i+1] != "+"
      return false
      end
    end
  end
  return true
end

# ////////////
# problem 9

# Check Nums
# Have the function CheckNums(num1,num2) take both parameters being passed and 
# return the string true if num2 is greater than num1, otherwise return the string 
# false. If the parameter values are equal to each other then return the string -1.
# Examples
# Input: 3 & num2 = 122
# Output: true
# Input: 67 & num2 = 67
# Output: -1 

def CheckNums(num1,num2)
  
  if num1 < num2
    true
  elsif num1 == num2
    print "-1"
  else
    false
  end
end

# ////////////
# problem 10

# Time Convert
# Have the function TimeConvert(num) take the num parameter being passed and 
# return the number of hours and minutes the parameter converts to 
# (ie. if num = 63 then the output should be 1:3). Separate the number 
# of hours and minutes with a colon.
# Examples
# Input: 126
# Output: 2:6
# Input: 45
# Output: 0:45 

def TimeConvert(num)
  (num/60).to_s + ":" + (num%60).to_s
end

# /////////////////////
#  problem 11

# Alphabet Soup
# Have the function AlphabetSoup(str) take the str string parameter being 
# passed and return the string with the letters in alphabetical order 
# (ie. hello becomes ehllo). Assume numbers and punctuation symbols will not 
# be included in the string.
# Examples
# Input: "coderbyte"
# Output: bcdeeorty
# Input: "hooplah"
# Output: ahhloop 

def AlphabetSoup(str)
  str.split("").sort.join
end

# ///////////////
#  problem 12

# AB Check
# Have the function ABCheck(str) take the str parameter being passed and return 
# the string true if the characters a and b are separated by exactly 3 places 
# anywhere in the string at least once (ie. "lane borrowed" would result in true 
# because there is exactly three characters between a and b). Otherwise return the 
# string false.
# Examples
# Input: "after badly"
# Output: false
# Input: "Laura sobs"
# Output: true 

def ABCheck(str)
  (0..str.length-1).each do |i|
    if str[i] == "a" || str[i] == "A"
      if "b" == str[i-4] || "B" == str[i-4] || "b" == str[i+4] || "B" == str[i+4]
        return true
      end
    end
  end
  return false
end

# ////////////////
# problem 13

# Vowel Count
# Have the function VowelCount(str) take the str string parameter being passed and 
# return the number of vowels the string contains (ie. "All cows eat grass and moo" 
# would return 8). Do not count y as a vowel for this challenge.
# Examples
# Input: "hello"
# Output: 2
# Input: "coderbyte"
# Output: 3 

def VowelCount(str)
  count = 0
  str.each_char do |ch|
    if ch == "a" || ch == "e" || ch == "i" || ch == "o" || ch == "u"
      count += 1
    end
  end
  count
end

# //or//

def VowelCount(str)
  count = 0
  str.each_char do |ch|
    case ch
      when "a", "e", "i", "o", "u"
      count += 1
    end
  end
  count
end

# /////////////
# problem 14

# Word Count
# Have the function WordCount(str) take the str string parameter being passed 
# and return the number of words the string contains (e.g. "Never eat shredded 
# wheat or cake" would return 6). Words will be separated by single spaces.
# Examples
# Input: "Hello World"
# Output: 2
# Input: "one 22 three"
# Output: 3

def WordCount(str)
  str.split(" ").length
end

# //////////////
# problem 15

# Ex Oh
# Have the function ExOh(str) take the str parameter being passed and return 
# the string true if there is an equal number of x's and o's, otherwise return 
# the string false. Only these two letters will be entered in the string, no 
# punctuation or numbers. For example: if str is "xooxxxxooxo" then the output 
# should return false because there are 6 x's and 5 o's.
# Examples
# Input: "xooxxo"
# Output: true
# Input: "x"
# Output: false

def ExOh(str)
  x_cnt = 0 
  o_cnt = 0
  str.each_char do |ch|
    if ch == "x"
      x_cnt += 1
    elsif ch == "o"
      o_cnt += 1
    end
  end
  if x_cnt == o_cnt 
    return true
  end
  return false
end

# //////////
#  problem 16 

# Palindrome
# Have the function Palindrome(str) take the str parameter being passed and 
# return the string true if the parameter is a palindrome, (the string is 
# the same forward as it is backward) otherwise return the string false. 
# For example: "racecar" is also "racecar" backwards. Punctuation and numbers 
# will not be part of the string.
# Examples
# Input: "never odd or even"
# Output: true
# Input: "eye"
# Output: true 

def Palindrome(str)
  rev_str = []
  str.delete(" ").each_char do |ch|
    rev_str.unshift(ch)
  end
  if rev_str.join == str.delete(" ")
    return true
  end
  return false
end

# ///////////////
# problem 17

# Arith Geo
# Have the function ArithGeo(arr) take the array of numbers stored in arr and return 
# the string "Arithmetic" if the sequence follows an arithmetic pattern or return 
# "Geometric" if it follows a geometric pattern. If the sequence doesn't follow either 
# pattern return -1. An arithmetic sequence is one where the difference between each 
# of the numbers is consistent, where as in a geometric sequence, each term after the 
# first is multiplied by some constant or common ratio. Arithmetic example: [2, 4, 6, 8] 
# and Geometric example: [2, 6, 18, 54]. Negative numbers may be entered as parameters, 
# 0 will not be entered, and no array will contain all the same elements.
# Examples
# Input: [5,10,15]
# Output: Arithmetic
# Input: [2,4,16,24]
# Output: -1 

# not solved!!!!!!!!!!!

def ArithGeo(arr)
  x_art = arr[arr.length-1] - arr[arr.length-2]
  x_geo = arr[arr.length-1] / arr[arr.length-2]
  art_counter = 0
  geo_counter = 0
  (1..arr.length-2).reverse_each do |i|
    if arr[i] - arr[i-1] == x_art
      art_counter += 1
    elsif arr[i] / arr[i-1] == x_geo
      geo_counter += 1
    end
  end
  if art_counter == arr.length-2
    return "Arithmetic"
  elsif geo_counter == arr.length-2
    return "Geometric"
  end
  return -1
end

puts ArithGeo([5,10,15])
puts ArithGeo([2,4,16,24])
puts ArithGeo([2, 4, 6, 8])
puts ArithGeo([2, 6, 18, 54])

# ///////////////////////
# problem18

# Array Addition I
# Have the function ArrayAdditionI(arr) take the array of numbers stored 
# in arr and return the string true if any combination of numbers in the 
#   array (excluding the largest number) can be added up to equal the largest 
#   number in the array, otherwise return the string false. For example: if 
#   arr contains [4, 6, 23, 10, 1, 3] the output should return true because 
#   4 + 6 + 10 + 3 = 23. The array will not be empty, will not contain all the 
#   same elements, and may contain negative numbers.
# Examples
# Input: [5,7,16,1,2]
# Output: false
# Input: [3,5,-1,8,12]
# Output: true 


def ArrayAdditionI(arr)
  combos = 0
  target = arr.sort[arr.length-1]
  new_arr = arr.-([target])
  (1..new_arr.length).each do |i|
    new_arr.combination(i).each do |y|
      x = y.reduce(:+)
      if x == target
        return true
      end
    end  
  end  
  return false
end

# ////////////////////
# problem 19

# Roman to Integer
# Symbol       Value
# I             1
# V             5
# X             10
# L             50
# C             100
# D             500
# M             1000

# Example 1:
# Input: s = "III"
# Output: 3
# Explanation: III = 3.

# Example 2:
# Input: s = "LVIII"
# Output: 58
# Explanation: L = 50, V= 5, III = 3.

# Example 3:
# Input: s = "MCMXCIV"
# Output: 1994
# Explanation: M = 1000, CM = 900, XC = 90 and IV = 4.

# Constraints:
#     1 <= s.length <= 15
#     s contains only the characters ('I', 'V', 'X', 'L', 'C', 'D', 'M').
#     It is guaranteed that s is a valid roman numeral in the range [1, 3999].

def romanNumeral(str)
  hash = {"I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500, "M" => 1000}
  
  hash["str[0]"]
  # answer = hash[str[str.length-1]]
  # # (0..str.length-2).reverse_each do |i|
  # #   # if hash["str[i]"] >= hash["str[i+1]"]
  # #   #   hash["str[i]"] += answer
  # #   #   # puts "answer: #{answer}"
  # #   # elsif hash["str[i]"] < hash["str[i+1]"]
  # #   #   hash["str[i]"] -= answer
  # #   #   # puts "answer: #{answer}"
  # #   # end
  # # end
  # return answer
end

puts romanNumeral("III")
puts romanNumeral("LVIII")
puts romanNumeral("MCMXCIV")
puts romanNumeral("CDXXXVII")

# ///////////////////
# problem 20

# Letter Count I
# Have the function LetterCountI(str) take the str parameter being passed 
# and return the first word with the greatest number of repeated letters. 
# For example: "Today, is the greatest day ever!" should return greatest 
# because it has 2 e's (and 2 t's) and it comes before ever which also has 2 e's. 
# If there are no words with repeating letters return -1. Words will be separated by spaces.
# Examples
# Input: "Hello apple pie"
# Output: Hello
# Input: "No words"
# Output: -1 

def RepeatedLetters(str)
  counter = 0
  letters = []
  (0..str.length-1).each do |i_one|
    next if letters.include? str[i_one]
    ((i_one+1)..str.length-1).each do |i_two|
      if (str[i_one] == str[i_two]) && !(letters.include? str[i_one])
        counter += 2 
        letters.push(str[i_one])
      elsif (str[i_one] == str[i_two]) && (letters.include? str[i_one])
        counter += 1
      end
    end
  end  
  return counter 
end

def LetterCountI(str)
  answer_word = nil
  answer_count = 0
  str.split(" ").each do |wrd|
    if RepeatedLetters(wrd) > answer_count
      answer_word = wrd
      answer_count = RepeatedLetters(wrd)
    end
  end
  if answer_count == 0 
    return -1
  else return answer_word
  end
end

puts LetterCountI("Hello apple pie")
puts LetterCountI("No words")
puts LetterCountI("the greatest repeated line ever")

# puts RepeatedLetters("Hello")
# puts RepeatedLetters("greatest")
# puts RepeatedLetters("repeated")

# /////////////////
# problem 21

# Second GreatLow
# Have the function SecondGreatLow(arr) take the array of numbers 
# stored in arr and return the second lowest and second greatest 
# numbers, respectively, separated by a space. For example: if arr contains 
# [7, 7, 12, 98, 106] the output should be 12 98. The array will not be empty 
# and will contain at least 2 numbers. It can get tricky if there's just two numbers!
# Examples
# Input: [1, 42, 42, 180]
# Output: 42 42
# Input: [4, 90]
# Output: 90 4 

def SecondGreatLow(arr)
  arr = arr.sort
  second_lowest = nil
  second_greatest = nil
  index = 0
  index2 = 0
  until arr[index] > arr[0]
    index += 1
    second_lowest = arr[index]
  end
  until arr.reverse[index2] < arr.reverse[0]
    index2 += 1
    second_greatest = arr.reverse[index2]
  end
  return " #{second_lowest} #{second_greatest}"
end

def func(arr) # O(nlogn) << pretty good, but not great.
  sorted_uniq = arr.sort.uniq

  [sorted_uniq[1], sorted_uniq[-2]]
end

# See if you can solve in linear O(n) time (i.e. only one loop)


puts SecondGreatLow([1, 42, 42, 180])
puts SecondGreatLow([4, 90])
puts SecondGreatLow([7, 7, 12, 98, 106])

# //////////////
# problem 22

# Division Stringified
# Have the function DivisionStringified(num1,num2) take both 
# parameters being passed, divide num1 by num2, and return the 
# result as a string with properly formatted commas. If an answer 
# is only 3 digits long, return the number with no commas 
# (ie. 2 / 3 should output "1"). For example: if num1 is 123456789 
# and num2 is 10000 the output should be "12,346".
# Examples
# Input: 5 & num2 = 2
# Output: 3
# Input: 6874 & num2 = 67
# Output: 103 


def DivisionStringified(num1, num2)
  answer = (num1.to_f / num2).round
  answer_arr = []
  counter = 0
  if answer.to_s.length <= 3
    return answer
  elsif answer.to_s.length%3 == 0
    answer.to_s.each_char do |i| 
      answer_arr.push(i)
      counter += 1
        if counter%3 == 0 && counter != answer.to_s.length
          answer_arr.push(",")
        end
    end
  else 
    answer.to_s.each_char do |i|
      answer_arr.push(i)
      counter += 1
        if counter%3 == answer.to_s.length%3 && counter != answer.to_s.length
          answer_arr.push(",")
        end
    end
  end
  return answer_arr.join
end

puts DivisionStringified(5, 2)
puts DivisionStringified(6874, 67)
puts DivisionStringified(2, 3)
puts DivisionStringified(123456789, 10000)
puts DivisionStringified(123456789, 1000)
puts DivisionStringified(123456789, 100)
puts DivisionStringified(123456789, 10)
puts DivisionStringified(123456789, 1)

# //////////////////////////
# problem 23

# Counting Minutes I
# Have the function CountingMinutesI(str) take the str 
# parameter being passed which will be two times (each properly 
# formatted with a colon and am or pm) separated by a hyphen and 
# return the total number of minutes between the two times. The 
# time will be in a 12 hour clock format. For example: if str is 
# 9:00am-10:00am then the output should be 60. If str is 1:00pm-11:00am 
# the output should be 1320.
# Examples
# Input: "12:30pm-12:00am"
# Output: 690
# Input: "1:23am-1:08am"
# Output: 1425

def CountingMinutesI(str)
  time1 = str.split("-")[0]
  time2 = str.split("-")[1]
  hrs1 = time1.split(":")[0].to_i
  hrs2 = time2.split(":")[0].to_i
  mins_m1 = time1.split(":")[1]
  mins_m2 = time2.split(":")[1]
  time_day1 = mins_m1[2] + mins_m1[3]
  time_day2 = mins_m2[2] + mins_m2[3]
  mins1 = (mins_m1[0] + mins_m1[1]).to_i
  mins2 = (mins_m2[0] + mins_m2[1]).to_i
  hrs_dif = hrs2 - hrs1
  mins_dif = mins1 - mins2
  if (time_day1 != time_day2) 
    answer = ((hrs_dif + 12) * 60) - mins_dif
  elsif((time_day1 == time_day2) && (hrs1 < hrs2))
    answer = (hrs_dif * 60) - mins_dif
  elsif (time_day1 == time_day2) && (hrs1 > hrs2)
    answer = ((hrs_dif + 12) * 60) - mins_dif
  elsif (time_day1 == time_day2) && (hrs1 == hrs2) && (mins1 < mins2)
    answer = (hrs_dif * 60) - mins_dif
  elsif (time_day1 == time_day2) && (hrs1 == hrs2) && (mins1 > mins2)
    answer = (24 * 60) - mins_dif
  elsif (time_day1 == time_day2) && (hrs1 == hrs2) && (mins1 == mins2)
    answer = 0, 1440
  end
  return answer
end
 
puts CountingMinutesI("12:30pm-12:00am")
puts CountingMinutesI("1:23am-1:08am")
puts CountingMinutesI("9:00am-10:00am")
puts CountingMinutesI("1:00pm-11:00am")

# ///////////
# Peoblem 24
# Mean Mode
# Have the function MeanMode(arr) take the array of numbers 
# stored in arr and return 1 if the mode equals the mean, 0 
# if they don't equal each other (ie. [5, 3, 3, 3, 1] should 
# return 1 because the mode (3) equals the mean (3)). The 
# array will not be empty, will only contain positive integers, 
# and will not contain more than one mode.
# Examples
# Input: [1, 2, 3]
# Output: 0
# Input: [4, 4, 4, 6, 2]
# Output: 1 

# 202. Happy Number
# Easy
# Topics
# Companies
# Write an algorithm to determine if a number n is happy.

# A happy number is a number defined by the following process:

# Starting with any positive integer, replace the number by the sum of the squares of its digits.
# Repeat the process until the number equals 1 (where it will stay), or it loops endlessly in a cycle which does not include 1.
# Those numbers for which this process ends in 1 are happy.
# Return true if n is a happy number, and false if not. 

# Example 1:

# Input: n = 19
# Output: true
# Explanation:
# 12 + 92 = 82
# 82 + 22 = 68
# 62 + 82 = 100
# 12 + 02 + 02 = 1
# Example 2:

# Input: n = 2
# Output: false
 
# Constraints:

# 1 <= n <= 231 - 1

def sep_n_sqr(num)
    next_num = 0
    puts "num: #{num}"
    squar_i = num.to_s.split('').each do |i|
        puts "i: #{i}"
        const = i.to_i ** 2
        puts "const #{const}"
        next_num += i.to_i ** 2
        puts "next_num: #{next_num}"
    end
    return next_num
end

def is_happy(n)
    num_ary = []
    puts "n: #{n}"
    nxt_nm = sep_n_sqr(n)
    until nxt_nm === 1 || num_ary.include?(nxt_nm)
        num_ary.push(nxt_nm)
        nxt_nm = sep_n_sqr(nxt_nm)
        puts "nxt_nm: #{nxt_nm}"
    end
    print "num_ary: #{num_ary}"
    return nxt_nm === 1
end


# 14. Longest Common Prefix
# Easy
# Topics
# Companies
# Write a function to find the longest common prefix string amongst an array of strings.

# If there is no common prefix, return an empty string "".

 

# Example 1:

# Input: strs = ["flower","flow","flight"]
# Output: "fl"
# Example 2:

# Input: strs = ["dog","racecar","car"]
# Output: ""
# Explanation: There is no common prefix among the input strings.
 

# Constraints:

# 1 <= strs.length <= 200
# 0 <= strs[i].length <= 200
# strs[i] consists of only lowercase English letters.

def longest_common_prefix(strs)
    prefix = ""
    index = 0
    test_chars = strs[0].split("")
    print test_chars
    strs.shift()
    strs.each { |str|
        if str[index] == test_chars[index] && !prefix.include?(test_chars[index])
            prefix << test_chars[index]
            index += 1
        elsif str[index] == test_chars[index] && prefix.include?(test_chars[index])
            index += 1
        else 
            break
        end
    }
    return prefix
end

# 88. Merge Sorted Array
# Easy
# Topics
# Companies
# Hint
# You are given two integer arrays nums1 and nums2, sorted in non-decreasing order, and two integers m and n, representing the number of elements in nums1 and nums2 respectively.

# Merge nums1 and nums2 into a single array sorted in non-decreasing order.

# The final sorted array should not be returned by the function, but instead be stored inside the array nums1. To accommodate this, nums1 has a length of m + n, where the first m elements denote the elements that should be merged, and the last n elements are set to 0 and should be ignored. nums2 has a length of n.

 

# Example 1:

# Input: nums1 = [1,2,3,0,0,0], m = 3, nums2 = [2,5,6], n = 3
# Output: [1,2,2,3,5,6]
# Explanation: The arrays we are merging are [1,2,3] and [2,5,6].
# The result of the merge is [1,2,2,3,5,6] with the underlined elements coming from nums1.
# Example 2:

# Input: nums1 = [1], m = 1, nums2 = [], n = 0
# Output: [1]
# Explanation: The arrays we are merging are [1] and [].
# The result of the merge is [1].
# Example 3:

# Input: nums1 = [0], m = 0, nums2 = [1], n = 1
# Output: [1]
# Explanation: The arrays we are merging are [] and [1].
# The result of the merge is [1].
# Note that because m = 0, there are no elements in nums1. The 0 is only there to ensure the merge result can fit in nums1.
 

# Constraints:

# nums1.length == m + n
# nums2.length == n
# 0 <= m, n <= 200
# 1 <= m + n <= 200
# -109 <= nums1[i], nums2[j] <= 109

def merge(nums1, m, nums2, n)
    nums2.each { |i| nums1.push(i) }
    nums1.delete_if { |char| char == 0 }
    nums1.sort!
end

# 217. Contains Duplicate
# Easy
# Topics
# Companies
# Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.

 

# Example 1:

# Input: nums = [1,2,3,1]
# Output: true
# Example 2:

# Input: nums = [1,2,3,4]
# Output: false
# Example 3:

# Input: nums = [1,1,1,3,3,4,3,2,4,2]
# Output: true
 

# Constraints:

# 1 <= nums.length <= 105
# -109 <= nums[i] <= 109

def contains_duplicate(nums)
    nums.each { |i| 
        nums.shift()
        if nums.include?(i)
            return true
        else
            return false
        end
    }
end