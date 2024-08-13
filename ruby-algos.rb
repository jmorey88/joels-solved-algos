# coderbyte problems

# Find Intersection
# Have the function FindIntersection(strArr) read the array of strings stored in
# strArr which will contain 2 elements: the first element will represent a list of
# comma-separated numbers sorted in ascending order, the second element will represent
# a second list of comma-separated numbers (also sorted). Your goal is to return a
# comma-separated string containing the numbers that occur in elements of strArr in
# sorted order. If there is no intersection, return the string false.
# Examples
# Input: ["1, 3, 4, 7, 13", "1, 2, 4, 13, 15"]
# Output: 1,4,13
# Input: ["1, 3, 9, 10, 17, 18", "1, 4, 9, 10"]
# Output: 1,9,10

def FindIntersection(strArr)
  ary1 = strArr[0].split(', ')
  ary2 = strArr[1].split(', ')
  intersectArr = []

  ary1.split(', ').each do |num1|
    ary2.split(', ').each do |num2|
      intersectArr.push num1 if num1 == num2
    end
  end

  if intersectArr.length == 0
    print nill
  else
    print intersectArr.join(', ')
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

puts QuestionsMarks('arrb6???4xxbl5???eee5')

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
  sen.split('').each do |char|
    wrd_ary.push(char) if ('a'..'z').include?(char) || char == ' '
  end
  wrd_ary.join.split(' ').each do |wrd|
    new_wrd.push(wrd)
    next unless wrd.length > word_lgth

    word_lgth = wrd.length
    longst_wrd.replace(new_wrd)
    new_wrd.clear
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
    if char.ord < 97 || char.ord > 122
      adjusted << char
    elsif char.ord == 122
      adjusted << 'A'
    elsif (char.ord + 1) == 97 || (char.ord + 1) == 101 || (char.ord + 1) == 105 || (char.ord + 1) == 111 || (char.ord + 1) == 117
      adjusted << (char.ord + 1).chr.upcase
    else
      adjusted << (char.ord + 1).chr
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
  end.join(' ')
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
    next unless ('a'..'z').include?(str[i])
    return false if str[i - 1] != '+' || str[i + 1] != '+'
  end
  true
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

def CheckNums(num1, num2)
  if num1 < num2
    true
  elsif num1 == num2
    print '-1'
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
  (num / 60).to_s + ':' + (num % 60).to_s
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
  str.split('').sort.join
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
  (0..str.length - 1).each do |i|
    next unless str[i] == 'a' || str[i] == 'A'
    return true if 'b' == str[i - 4] || 'B' == str[i - 4] || 'b' == str[i + 4] || 'B' == str[i + 4]
  end
  false
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
    count += 1 if %w[a e i o u].include?(ch)
  end
  count
end

# //or//

def VowelCount(str)
  count = 0
  str.each_char do |ch|
    case ch
    when 'a', 'e', 'i', 'o', 'u'
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
  str.split(' ').length
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
    if ch == 'x'
      x_cnt += 1
    elsif ch == 'o'
      o_cnt += 1
    end
  end
  return true if x_cnt == o_cnt

  false
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
  str.delete(' ').each_char do |ch|
    rev_str.unshift(ch)
  end
  return true if rev_str.join == str.delete(' ')

  false
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
  x_art = arr[arr.length - 1] - arr[arr.length - 2]
  x_geo = arr[arr.length - 1] / arr[arr.length - 2]
  art_counter = 0
  geo_counter = 0
  (1..arr.length - 2).reverse_each do |i|
    if arr[i] - arr[i - 1] == x_art
      art_counter += 1
    elsif arr[i] / arr[i - 1] == x_geo
      geo_counter += 1
    end
  end
  if art_counter == arr.length - 2
    return 'Arithmetic'
  elsif geo_counter == arr.length - 2
    return 'Geometric'
  end

  -1
end

puts ArithGeo([5, 10, 15])
puts ArithGeo([2, 4, 16, 24])
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
  target = arr.sort[arr.length - 1]
  new_arr = arr.-([target])
  (1..new_arr.length).each do |i|
    new_arr.combination(i).each do |y|
      x = y.reduce(:+)
      return true if x == target
    end
  end
  false
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

def romanNumeral(_str)
  hash = { 'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50, 'C' => 100, 'D' => 500, 'M' => 1000 }

  hash['str[0]']
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

puts romanNumeral('III')
puts romanNumeral('LVIII')
puts romanNumeral('MCMXCIV')
puts romanNumeral('CDXXXVII')

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
  (0..str.length - 1).each do |i_one|
    next if letters.include? str[i_one]

    ((i_one + 1)..str.length - 1).each do |i_two|
      if (str[i_one] == str[i_two]) && !(letters.include? str[i_one])
        counter += 2
        letters.push(str[i_one])
      elsif (str[i_one] == str[i_two]) && (letters.include? str[i_one])
        counter += 1
      end
    end
  end
  counter
end

def LetterCountI(str)
  answer_word = nil
  answer_count = 0
  str.split(' ').each do |wrd|
    if RepeatedLetters(wrd) > answer_count
      answer_word = wrd
      answer_count = RepeatedLetters(wrd)
    end
  end
  return -1 if answer_count == 0

  answer_word
end

puts LetterCountI('Hello apple pie')
puts LetterCountI('No words')
puts LetterCountI('the greatest repeated line ever')

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
  " #{second_lowest} #{second_greatest}"
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
  elsif answer.to_s.length % 3 == 0
    answer.to_s.each_char do |i|
      answer_arr.push(i)
      counter += 1
      answer_arr.push(',') if counter % 3 == 0 && counter != answer.to_s.length
    end
  else
    answer.to_s.each_char do |i|
      answer_arr.push(i)
      counter += 1
      answer_arr.push(',') if counter % 3 == answer.to_s.length % 3 && counter != answer.to_s.length
    end
  end

  answer_arr.join
end

puts DivisionStringified(5, 2)
puts DivisionStringified(6874, 67)
puts DivisionStringified(2, 3)
puts DivisionStringified(123_456_789, 10_000)
puts DivisionStringified(123_456_789, 1000)
puts DivisionStringified(123_456_789, 100)
puts DivisionStringified(123_456_789, 10)
puts DivisionStringified(123_456_789, 1)

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
  time1 = str.split('-')[0]
  time2 = str.split('-')[1]
  hrs1 = time1.split(':')[0].to_i
  hrs2 = time2.split(':')[0].to_i
  mins_m1 = time1.split(':')[1]
  mins_m2 = time2.split(':')[1]
  time_day1 = mins_m1[2] + mins_m1[3]
  time_day2 = mins_m2[2] + mins_m2[3]
  mins1 = (mins_m1[0] + mins_m1[1]).to_i
  mins2 = (mins_m2[0] + mins_m2[1]).to_i
  hrs_dif = hrs2 - hrs1
  mins_dif = mins1 - mins2
  if time_day1 != time_day2
    answer = ((hrs_dif + 12) * 60) - mins_dif
  elsif (time_day1 == time_day2) && (hrs1 < hrs2)
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
  answer
end

puts CountingMinutesI('12:30pm-12:00am')
puts CountingMinutesI('1:23am-1:08am')
puts CountingMinutesI('9:00am-10:00am')
puts CountingMinutesI('1:00pm-11:00am')

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
    const = i.to_i**2
    puts "const #{const}"
    next_num += i.to_i**2
    puts "next_num: #{next_num}"
  end
  next_num
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
  nxt_nm === 1
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
  prefix = ''
  index = 0
  test_chars = strs[0].split('')
  print test_chars
  strs.shift
  strs.each do |str|
    if str[index] == test_chars[index] && !prefix.include?(test_chars[index])
      prefix << test_chars[index]
      index += 1
    elsif str[index] == test_chars[index] && prefix.include?(test_chars[index])
      index += 1
    else
      break
    end
  end
  prefix
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

def merge(nums1, _m, nums2, _n)
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
  nums.each do |i|
    nums.shift
    return true if nums.include?(i)

    return false
  end
end

# 520. Detect Capital
# Easy
# Topics
# Companies
# We define the usage of capitals in a word to be right when one of the following cases holds:

# All letters in this word are capitals, like "USA".
# All letters in this word are not capitals, like "leetcode".
# Only the first letter in this word is capital, like "Google".
# Given a string word, return true if the usage of capitals in it is right.

# Example 1:

# Input: word = "USA"
# Output: true
# Example 2:

# Input: word = "FlaG"
# Output: false

# Constraints:

# 1 <= word.length <= 100
# word consists of lowercase and uppercase English letters.

def detect_capital_use(word)
  cap_count = 0
  wrd_ary = word.split('')
  wrd_ary.each do |char|
    cap_count += 1 if char === char.upcase
  end
  puts "wrd_ary: #{wrd_ary}"
  puts "cap_count: #{cap_count}"
  puts "ap_count = wrd_ary.length: #{ap_count = wrd_ary.length}"
  puts "wrd_ary[0] === wrd_ary[0].upcase: #{wrd_ary[0] === wrd_ary[0].upcase}"
  if (cap_count == 0) ||
     (wrd_ary[0] === wrd_ary[0].upcase && cap_count == wrd_ary.length) ||
     (wrd_ary[0] === wrd_ary[0].upcase && cap_count == 1)
    true
  else
    false
  end
end

# 796. Rotate String
# Easy
# Topics
# Companies
# Given two strings s and goal, return true if and only if s can become goal after some number of shifts on s.

# A shift on s consists of moving the leftmost character of s to the rightmost position.

# For example, if s = "abcde", then it will be "bcdea" after one shift.

# Example 1:

# Input: s = "abcde", goal = "cdeab"
# Output: true
# Example 2:

# Input: s = "abcde", goal = "abced"
# Output: false

# Constraints:

# 1 <= s.length, goal.length <= 100
# s and goal consist of lowercase English letters.

# solution 1

def rotate_string(s, goal)
  str_to_a = s.split('')
  puts "str_to_a #{str_to_a}"
  puts "str_to_a.join #{str_to_a.join('')}"
  puts "str_to_a.to_s #{str_to_a}"
  index = 0
  until str_to_a.join('') == goal || index > str_to_a.length
    str_to_a.push(str_to_a[0])
    str_to_a.shift
    index += 1
  end
  if index > str_to_a.length
    false
  elsif str_to_a.join('') == goal
    true
  end
end

# solution 2

def rotate_string(s, goal)
  return false if s.length != goal.length # Early exit if lengths are different

  (s + s).include?(goal)
end

# 58. Length of Last Word
# Easy
# Topics
# Companies
# Given a string s consisting of words and spaces, return the length of the last word in the string.

# A word is a maximal
# substring
#  consisting of non-space characters only.

# Example 1:

# Input: s = "Hello World"
# Output: 5
# Explanation: The last word is "World" with length 5.
# Example 2:

# Input: s = "   fly me   to   the moon  "
# Output: 4
# Explanation: The last word is "moon" with length 4.
# Example 3:

# Input: s = "luffy is still joyboy"
# Output: 6
# Explanation: The last word is "joyboy" with length 6.

# Constraints:

# 1 <= s.length <= 104
# s consists of only English letters and spaces ' '.
# There will be at least one word in s.

# solution 1

def length_of_last_word(s)
  # s_array = s.split(' ')
  # last_word = s_array.pop()
  # lst_wrd_lngth = last_word.length
  # return lst_wrd_lngth
end

# solution 1 refactor

def length_of_last_word(s)
  s.split(' ').pop.length
end

# 26. Remove Duplicates from Sorted Array
# Easy
# Topics
# Companies
# Hint
# Given an integer array nums sorted in non-decreasing order, remove the duplicates in-place such that each unique element appears only once. The relative order of the elements should be kept the same. Then return the number of unique elements in nums.

# Consider the number of unique elements of nums to be k, to get accepted, you need to do the following things:

# Change the array nums such that the first k elements of nums contain the unique elements in the order they were present in nums initially. The remaining elements of nums are not important as well as the size of nums.
# Return k.
# Custom Judge:

# The judge will test your solution with the following code:

# int[] nums = [...]; // Input array
# int[] expectedNums = [...]; // The expected answer with correct length

# int k = removeDuplicates(nums); // Calls your implementation

# assert k == expectedNums.length;
# for (int i = 0; i < k; i++) {
#     assert nums[i] == expectedNums[i];
# }
# If all assertions pass, then your solution will be accepted.

# Example 1:

# Input: nums = [1,1,2]
# Output: 2, nums = [1,2,_]
# Explanation: Your function should return k = 2, with the first two elements of nums being 1 and 2 respectively.
# It does not matter what you leave beyond the returned k (hence they are underscores).
# Example 2:

# Input: nums = [0,0,1,1,1,2,2,3,3,4]
# Output: 5, nums = [0,1,2,3,4,_,_,_,_,_]
# Explanation: Your function should return k = 5, with the first five elements of nums being 0, 1, 2, 3, and 4 respectively.
# It does not matter what you leave beyond the returned k (hence they are underscores).

# solution 1

def remove_duplicates(nums)
  index = 0
  num = ''
  inx_ary = []
  nums.each do |i|
    if i === num
      inx_ary.push(index)
    else
      num = i
    end
    index += 1
  end

  inx_ary.reverse.each do |inx|
    nums.delete_at(inx)
  end

  nums.length
end

# solution 2

def remove_duplicates(nums)
  return 0 if nums.empty?

  write_index = 1

  (1...nums.length).each do |read_index|
    if nums[read_index] != nums[read_index - 1]
      nums[write_index] = nums[read_index]
      write_index += 1
    end
  end

  write_index
end

# 35. Search Insert Position
# Easy
# Topics
# Companies
# Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.

# You must write an algorithm with O(log n) runtime complexity.

# Example 1:

# Input: nums = [1,3,5,6], target = 5
# Output: 2
# Example 2:

# Input: nums = [1,3,5,6], target = 2
# Output: 1
# Example 3:

# Input: nums = [1,3,5,6], target = 7
# Output: 4

# Constraints:

# 1 <= nums.length <= 104
# -104 <= nums[i] <= 104
# nums contains distinct values sorted in ascending order.
# -104 <= target <= 104

# solution

def search_insert(nums, target)
  return nums.length if nums[nums.length - 1] < target

  nums.each do |i|
    return nums.index(i) if i >= target
  end
end

# 70. Climbing Stairs
# Easy
# Topics
# Companies
# Hint
# You are climbing a staircase. It takes n steps to reach the top.

# Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?

# Example 1:

# Input: n = 2
# Output: 2
# Explanation: There are two ways to climb to the top.
# 1. 1 step + 1 step
# 2. 2 steps
# Example 2:

# Input: n = 3
# Output: 3
# Explanation: There are three ways to climb to the top.
# 1. 1 step + 1 step + 1 step
# 2. 1 step + 2 steps
# 3. 2 steps + 1 step

# Constraints:

1 <= n && n

# solution

def climb_stairs(n)
  return 1 if n == 1
  return 2 if n == 2

  # Initialize base cases
  ways = Array.new(n + 1)
  ways[1] = 1
  ways[2] = 2

  # Fill the array using the recurrence relation
  (3..n).each do |i|
    ways[i] = ways[i - 1] + ways[i - 2]
  end

  # The answer is in ways[n]
  ways[n]
end

# 3151. Special Array I
# Easy
# Topics
# Companies
# Hint
# An array is considered special if every pair of its adjacent elements contains two numbers with different parity.

# You are given an array of integers nums. Return true if nums is a special array, otherwise, return false.

# Example 1:

# Input: nums = [1]

# Output: true

# Explanation:

# There is only one element. So the answer is true.

# Example 2:

# Input: nums = [2,1,4]

# Output: true

# Explanation:

# There is only two pairs: (2,1) and (1,4), and both of them contain numbers with different parity. So the answer is true.

# Example 3:

# Input: nums = [4,3,1,6]

# Output: false

# Explanation:

# nums[1] and nums[2] are both odd. So the answer is false.

# Constraints:

# 1 <= nums.length <= 100
# 1 <= nums[i] <= 100

# solution 1

def is_array_special(nums)
  return true if nums.length == 1

  char = ''
  nums.each do |i|
    if char === ''
      char = i
    elsif (char.even? && i.even?) ||
          (char.odd? && i.odd?)
      return false
    else
      char = i
    end
  end
  true
end

# solution 1 refactor

def is_array_special(nums)
  return true if nums.length == 1

  nums.each_cons(2) do |a, b|
    return false if (a.even? && b.even?) || (a.odd? && b.odd?)
  end

  true
end

# 3174. Clear Digits
# Easy
# Topics
# Companies
# Hint
# You are given a string s.

# Your task is to remove all digits by doing this operation repeatedly:

# Delete the first digit and the closest non-digit character to its left.
# Return the resulting string after removing all digits.

# Example 1:

# Input: s = "abc"

# Output: "abc"

# Explanation:

# There is no digit in the string.

# Example 2:

# Input: s = "cb34"

# Output: ""

# Explanation:

# First, we apply the operation on s[2], and s becomes "c4".

# Then we apply the operation on s[1], and s becomes "".

# Constraints:

# 1 <= s.length <= 100
# s consists only of lowercase English letters and digits.
# The input is generated such that it is possible to delete all digits.

# solution 1

def clear_digits(s)
  s_ary = s.split('')
  ary = []
  index = 0
  disp_idx = 0
  s_ary.each do |char|
    if ('0'..'9').include?(char)
      puts "char = int?: #{('0'..'9').include?(char)}"
      ary.push(index)
    end
    index += 1
    puts "index: #{index}"
  end
  puts "ary: #{ary}"
  ary.each do |idx|
    s_ary.delete_at(idx - disp_idx)
    s_ary.delete_at(idx - disp_idx - 1)
    disp_idx += 2
    puts "s_ary: #{s_ary}"
  end
  s_ary.join('')
end

# solution 1 refactor

def clear_digits(s)
  s_ary = s.chars
  digit_indices = []

  s_ary.each_with_index do |char, index|
    digit_indices << index if char.match?(/[0-9]/)
  end

  # Delete digits and their left non-digit characters
  digit_indices.reverse.each do |idx|
    s_ary.delete_at(idx) # Remove the digit
    s_ary.delete_at(idx - 1) if idx > 0 # Remove the closest non-digit to its left
  end

  s_ary.join('')
end

# slution 2

def clear_digits(s)
  stack = []

  s.each_char do |char|
    if char.match?(/[0-9]/)
      stack.pop if stack.any? # Remove the closest non-digit to its left
    else
      stack.push(char) # Add non-digit character to the stack
    end
  end

  stack.join('')
end

# 20. Valid Parentheses
# Easy
# Topics
# Companies
# Hint
# Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

# An input string is valid if:

# Open brackets must be closed by the same type of brackets.
# Open brackets must be closed in the correct order.
# Every close bracket has a corresponding open bracket of the same type.

# Example 1:

# Input: s = "()"
# Output: true
# Example 2:

# Input: s = "()[]{}"
# Output: true
# Example 3:

# Input: s = "(]"
# Output: false

# Constraints:

# 1 <= s.length <= 104
# s consists of parentheses only '()[]{}'.

# solution 1

def is_valid(s)
  # Define a hash to map closing brackets to their corresponding opening brackets
  bracket_pairs = {
    ')' => '(',
    '}' => '{',
    ']' => '['
  }

  # Initialize an empty stack
  stack = []

  # Iterate through each character in the string
  s.each_char do |char|
    if bracket_pairs.values.include?(char)  # Check if it's an opening bracket
      stack.push(char)
    elsif bracket_pairs.keys.include?(char) # Check if it's a closing bracket
      return false if stack.empty? || stack.pop != bracket_pairs[char]
    end
  end

  # If the stack is empty, all opening brackets have been matched and closed properly
  stack.empty?
end

# 18. 4Sum
# Medium
# Topics
# Companies
# Given an array nums of n integers, return an array of all the unique quadruplets [nums[a], nums[b], nums[c], nums[d]] such that:

# 0 <= a, b, c, d < n
# a, b, c, and d are distinct.
# nums[a] + nums[b] + nums[c] + nums[d] == target
# You may return the answer in any order.

# Example 1:

# Input: nums = [1,0,-1,0,-2,2], target = 0
# Output: [[-2,-1,1,2],[-2,0,0,2],[-1,0,0,1]]
# Example 2:

# Input: nums = [2,2,2,2,2], target = 8
# Output: [[2,2,2,2]]

# Constraints:

# 1 <= nums.length <= 200
# -109 <= nums[i] <= 109
# -109 <= target <= 109

# solution 1

def four_sum(nums, target)
  answer = []
  combos = nums.combination(4).to_a
  combos.each do |combo|
    combo_sum = 0
    combo.each do |i|
      combo_sum += i
    end
    answer.push(combo) if combo_sum == target && !answer.include?(combo)
  end
  answer
end

# solution 1 refactored

def four_sum(nums, target)
  answer = []
  nums.combination(4).each do |combo|
    answer.push(combo.sort) if combo.sum == target && !answer.include?(combo.sort)
  end
  answer
end

# solution 2

def four_sum(nums, target)
  nums.sort!
  n = nums.size
  answer = []

  (0...n - 3).each do |i|
    next if i > 0 && nums[i] == nums[i - 1]

    (i + 1...n - 2).each do |j|
      next if j > i + 1 && nums[j] == nums[j - 1]

      left = j + 1
      right = n - 1

      while left < right
        sum = nums[i] + nums[j] + nums[left] + nums[right]

        if sum == target
          answer << [nums[i], nums[j], nums[left], nums[right]]
          left += 1
          right -= 1
          left += 1 while left < right && nums[left] == nums[left - 1]
          right -= 1 while left < right && nums[right] == nums[right + 1]
        elsif sum < target
          left += 1
        else
          right -= 1
        end
      end
    end
  end

  answer
end

# 15. 3Sum
# Medium
# Topics
# Companies
# Hint
# Given an integer array nums, return all the triplets [nums[i], nums[j], nums[k]] such that i != j, i != k, and j != k, and nums[i] + nums[j] + nums[k] == 0.

# Notice that the solution set must not contain duplicate triplets.

# Example 1:

# Input: nums = [-1,0,1,2,-1,-4]
# Output: [[-1,-1,2],[-1,0,1]]
# Explanation:
# nums[0] + nums[1] + nums[2] = (-1) + 0 + 1 = 0.
# nums[1] + nums[2] + nums[4] = 0 + 1 + (-1) = 0.
# nums[0] + nums[3] + nums[4] = (-1) + 2 + (-1) = 0.
# The distinct triplets are [-1,0,1] and [-1,-1,2].
# Notice that the order of the output and the order of the triplets does not matter.
# Example 2:

# Input: nums = [0,1,1]
# Output: []
# Explanation: The only possible triplet does not sum up to 0.
# Example 3:

# Input: nums = [0,0,0]
# Output: [[0,0,0]]
# Explanation: The only possible triplet sums up to 0.

# Constraints:

# 3 <= nums.length <= 3000
# -105 <= nums[i] <= 105

# solution 1

def three_sum(nums)
  answer = []
  nums.combination(3).each do |combo|
    answer.push(combo.sort) if combo.sum == 0 && !answer.include?(combo.sort)
  end
  answer
end

# solution 2

def three_sum(nums)
  nums.sort!
  n = nums.size
  answer = []

  (0...n - 2).each do |i|
    next if i > 0 && nums[i] == nums[i - 1]

    left = i + 1
    right = n - 1

    while left < right
      sum = nums[i] + nums[left] + nums[right]

      if sum == 0
        answer << [nums[i], nums[left], nums[right]]
        left += 1
        right -= 1
        left += 1 while left < right && nums[left] == nums[left - 1]
        right -= 1 while left < right && nums[right] == nums[right + 1]
      elsif sum < 0
        left += 1
      else
        right -= 1
      end
    end
  end

  answer
end

# 16. 3Sum Closest
# Medium
# Topics
# Companies
# Given an integer array nums of length n and an integer target, find three integers in nums such that the sum is closest to target.

# Return the sum of the three integers.

# You may assume that each input would have exactly one solution.

# Example 1:

# Input: nums = [-1,2,1,-4], target = 1
# Output: 2
# Explanation: The sum that is closest to the target is 2. (-1 + 2 + 1 = 2).
# Example 2:

# Input: nums = [0,0,0], target = 1
# Output: 0
# Explanation: The sum that is closest to the target is 0. (0 + 0 + 0 = 0).

# Constraints:

# 3 <= nums.length <= 500
# -1000 <= nums[i] <= 1000
# -104 <= target <= 104

# solution 1

def three_sum_closest(nums, target)
  nums.sort!
  n = nums.length
  answer = nums[0] + nums[1] + nums[2]

  (0...n - 2).each do |i|
    left = i + 1
    right = n - 1

    while left < right
      sum = nums[i] + nums[left] + nums[right]

      answer = sum if (target - sum).abs < (target - answer).abs

      if sum == target
        return sum
      elsif sum < target
        left += 1
      else
        right -= 1
      end
    end
  end
  answer
end

# 17. Letter Combinations of a Phone Number
# Medium
# Topics
# Companies
# Given a string containing digits from 2-9 inclusive, return all possible letter combinations that the number could represent. Return the answer in any order.

# A mapping of digits to letters (just like on the telephone buttons) is given below. Note that 1 does not map to any letters.

# Example 1:

# Input: digits = "23"
# Output: ["ad","ae","af","bd","be","bf","cd","ce","cf"]
# Example 2:

# Input: digits = ""
# Output: []
# Example 3:

# Input: digits = "2"
# Output: ["a","b","c"]

# Constraints:

# 0 <= digits.length <= 4
# digits[i] is a digit in the range ['2', '9'].

# solution 1

def letter_combinations(digits)
  return [] if digits.empty?

  combos = {
    '2' => 'abc',
    '3' => 'def',
    '4' => 'ghi',
    '5' => 'jkl',
    '6' => 'mno',
    '7' => 'pqrs',
    '8' => 'tuv',
    '9' => 'wxyz'
  }

  answer = []

  def backtrack(combination, next_digits, combos, answer)
    if next_digits.empty?
      answer << combination
    else
      digit = next_digits[0]
      letters = combos[digit]
      letters.each_char do |letter|
        backtrack(combination + letter, next_digits[1..-1], combos, answer)
      end
    end
  end

  backtrack('', digits, combos, answer)
  answer
end

# 22. Generate Parentheses
# Medium
# Topics
# Companies
# Given n pairs of parentheses, write a function to generate all combinations of well-formed parentheses.

# Example 1:

# Input: n = 3
# Output: ["((()))","(()())","(())()","()(())","()()()"]
# Example 2:

# Input: n = 1
# Output: ["()"]

# Constraints:

# 1 <= n <= 8

# solution 1 recursive

def generate_parenthesis(n)
  result = []

  def backtrack(result, current, open_count, close_count, max)
    # Base case: if the current combination is complete
    if current.length == max * 2
      result << current
      return
    end

    # If we can add an open parenthesis, add it and recurse
    backtrack(result, current + '(', open_count + 1, close_count, max) if open_count < max

    # If we can add a close parenthesis, add it and recurse
    return unless close_count < open_count

    backtrack(result, current + ')', open_count, close_count + 1, max)
  end

  # Start the backtracking process with an empty combination
  backtrack(result, '', 0, 0, n)

  result
end

# solution 2 iterative

def generate_parentheses(n)
  result = []
  queue = [['', 0, 0]]

  until queue.empty?
    current, open_count, close_count = queue.shift

    if open_count == n && close_count == n
      result << current
    else
      queue.push([current + '(', open_count + 1, close_count]) if open_count < n

      queue.push([current + ')', open_count, close_count + 1]) if close_count < open_count
    end
  end

  result
end

# 412. Fizz Buzz
# Easy
# Topics
# Companies
# Given an integer n, return a string array answer (1-indexed) where:

# answer[i] == "FizzBuzz" if i is divisible by 3 and 5.
# answer[i] == "Fizz" if i is divisible by 3.
# answer[i] == "Buzz" if i is divisible by 5.
# answer[i] == i (as a string) if none of the above conditions are true.

# Example 1:

# Input: n = 3
# Output: ["1","2","Fizz"]
# Example 2:

# Input: n = 5
# Output: ["1","2","Fizz","4","Buzz"]
# Example 3:

# Input: n = 15
# Output: ["1","2","Fizz","4","Buzz","Fizz","7","8","Fizz","Buzz","11","Fizz","13","14","FizzBuzz"]

# Constraints:

# 1 <= n <= 104

# solution 1

def fizz_buzz(n)
  # create empty answer array
  answer = []
  # iterate through range 1...n
  for i in 1...n + 1
    # check if n is divisible by 3, 5, both or none
    # depending what condition is met, .push the appropriate
    # integer(as string), or Fizz, Bar or both.
    if i % 3 == 0 && i % 5 == 0
      answer.push('FizzBuzz')
    elsif i % 3 == 0 && i % 5 != 0
      answer.push('Fizz')
    elsif i % 5 == 0 && i % 3 != 0
      answer.push('Buzz')
    else
      answer.push("#{i}")
    end
  end
  # return answer
  answer
end

# solution 1 refactored

def fizz_buzz(n)
  # create empty answer array
  answer = []
  # iterate through range 1...n
  for i in 1...n + 1
    # check if n is divisible by 3, 5, both or none
    # depending what condition is met, .push the appropriate
    # integer(as string), or Fizz, Bar or both.
    if i % 3 == 0 && i % 5 == 0
      answer.push('FizzBuzz')
    elsif i % 3 == 0 && i % 5 != 0
      answer.push('Fizz')
    elsif i % 5 == 0 && i % 3 != 0
      answer.push('Buzz')
    else
      answer.push("#{i}")
    end
  end
  # return answer
  answer
end

# solution 2

def fizz_buzz(n)
  (1..n).map do |i|
    result = ''
    result += 'Fizz' if i % 3 == 0
    result += 'Buzz' if i % 5 == 0
    result.empty? ? i.to_s : result
  end
end

# 242. Valid Anagram
# Easy
# Topics
# Companies
# Given two strings s and t, return true if t is an anagram of s, and false otherwise.

# An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

# Example 1:

# Input: s = "anagram", t = "nagaram"
# Output: true
# Example 2:

# Input: s = "rat", t = "car"
# Output: false

# Constraints:

# 1 <= s.length, t.length <= 5 * 104
# s and t consist of lowercase English letters.

# solution 1

def is_anagram(s, t)
  s_sorted = s.split('').sort
  t_sorted = t.split('').sort
  return true if s_sorted == t_sorted

  false
end

# solution 1 refactored

def is_anagram(s, t)
  s.chars.sort == t.chars.sort
end

# solution 2(not efficient with nested loop)

def is_anagram(s, t)
  s.each_char do |char1|
    t.each_char do |char2|
      if char1 == char2
        s.delete! char1
        t.delete! char2
      end
    end
  end
  return true if s.empty? == true && t.empty? == true

  false
end

# solution 3

def is_anagram(s, t)
  return false if s.length != t.length

  s_freq = Hash.new(0)
  t_freq = Hash.new(0)

  s.each_char { |char| s_freq[char] += 1 }
  t.each_char { |char| t_freq[char] += 1 }

  s_freq == t_freq
end

# solution 3 refactored

def is_anagram(s, t)
  return false if s.length != t.length

  char_count = Hash.new(0)

  s.each_char { |char| char_count[char] += 1 }
  t.each_char { |char| char_count[char] -= 1 }

  char_count.all? { |_, count| count == 0 }
end

# 268. Missing Number
# Easy
# Topics
# Companies
# Given an array nums containing n distinct numbers in the range [0, n], return the only number in the range that is missing from the array.

# Example 1:

# Input: nums = [3,0,1]
# Output: 2
# Explanation: n = 3 since there are 3 numbers, so all numbers are in the range [0,3]. 2 is the missing number in the range since it does not appear in nums.
# Example 2:

# Input: nums = [0,1]
# Output: 2
# Explanation: n = 2 since there are 2 numbers, so all numbers are in the range [0,2]. 2 is the missing number in the range since it does not appear in nums.
# Example 3:

# Input: nums = [9,6,4,2,3,5,7,0,1]
# Output: 8
# Explanation: n = 9 since there are 9 numbers, so all numbers are in the range [0,9]. 8 is the missing number in the range since it does not appear in nums.

# Constraints:

# n == nums.length
# 1 <= n <= 104
# 0 <= nums[i] <= n
# All the numbers of nums are unique.

# solution 1
def missing_number(nums)
  (0..nums.length).each do |i|
    return i unless nums.include?(i)
  end
end

# solution 2

def missing_number(nums)
  n = nums.length
  expected_sum = n * (n + 1) / 2
  actual_sum = nums.sum
  expected_sum - actual_sum
end

# 485. Max Consecutive Ones
# Easy
# Topics
# Companies
# Hint
# Given a binary array nums, return the maximum number of consecutive 1's in the array.

# Example 1:

# Input: nums = [1,1,0,1,1,1]
# Output: 3
# Explanation: The first two digits or the last three digits are consecutive 1s. The maximum number of consecutive 1s is 3.
# Example 2:

# Input: nums = [1,0,1,1,0,1]
# Output: 2

# Constraints:

# 1 <= nums.length <= 105
# nums[i] is either 0 or 1.

# solution 1

def find_max_consecutive_ones(nums)
  answer = 0
  counter = 0
  nums.each do |i|
    if i == 1
      counter += 1
      answer = counter if counter > answer
    else
      counter = 0
    end
  end
  answer
end

# solution 1 refactor

def find_max_consecutive_ones(nums)
  max_count = 0
  current_count = 0

  nums.each do |num|
    if num == 1
      current_count += 1
      max_count = [max_count, current_count].max
    else
      current_count = 0
    end
  end

  max_count
end

# solution 2

def find_max_consecutive_ones(nums)
  nums.join.split('0').map(&:length).max
end

# 500. Keyboard Row
# Easy
# Topics
# Companies
# Given an array of strings words, return the words that can be typed using letters of the alphabet on only one row of American keyboard like the image below.

# In the American keyboard:

# the first row consists of the characters "qwertyuiop",
# the second row consists of the characters "asdfghjkl", and
# the third row consists of the characters "zxcvbnm".

# Example 1:

# Input: words = ["Hello","Alaska","Dad","Peace"]
# Output: ["Alaska","Dad"]
# Example 2:

# Input: words = ["omk"]
# Output: []
# Example 3:

# Input: words = ["adsdf","sfd"]
# Output: ["adsdf","sfd"]

# Constraints:

# 1 <= words.length <= 20
# 1 <= words[i].length <= 100
# words[i] consists of English letters (both lowercase and uppercase).

# solution 1

def find_words(words)
  row1 = 'qwertyuiop'
  row2 = 'asdfghjkl'
  row3 = 'zxcvbnm'

  answer = []

  words.each do |word|
    wrd_row = 0
    char_row = 0
    valid = true

    word.each_char do |char|
      char = char.downcase # To handle case insensitivity

      if wrd_row == 0 && row1.include?(char)
        wrd_row = 1
        char_row = 1
      elsif wrd_row == 0 && row2.include?(char)
        wrd_row = 2
        char_row = 2
      elsif wrd_row == 0 && row3.include?(char)
        wrd_row = 3
        char_row = 3
      elsif wrd_row > 0 && row1.include?(char)
        char_row = 1
      elsif wrd_row > 0 && row2.include?(char)
        char_row = 2
      elsif wrd_row > 0 && row3.include?(char)
        char_row = 3
      end

      if wrd_row != char_row
        valid = false
        break
      end
    end

    answer.push(word) if valid
  end

  answer
end

# solution 2

def find_words(words)
  row1 = Set.new('qwertyuiop')
  row2 = Set.new('asdfghjkl')
  row3 = Set.new('zxcvbnm')

  answer = []

  words.each do |word|
    downcased_word = word.downcase
    first_char = downcased_word[0]

    target_row = if row1.include?(first_char)
                   row1
                 elsif row2.include?(first_char)
                   row2
                 else
                   row3
                 end

    answer.push(word) if downcased_word.chars.all? { |char| target_row.include?(char) }
  end

  answer
end

# solution 3

def find_words(words)
  rows = {
    'q' => 1, 'w' => 1, 'e' => 1, 'r' => 1, 't' => 1, 'y' => 1, 'u' => 1, 'i' => 1, 'o' => 1, 'p' => 1,
    'a' => 2, 's' => 2, 'd' => 2, 'f' => 2, 'g' => 2, 'h' => 2, 'j' => 2, 'k' => 2, 'l' => 2,
    'z' => 3, 'x' => 3, 'c' => 3, 'v' => 3, 'b' => 3, 'n' => 3, 'm' => 3
  }

  answer = []

  words.each do |word|
    downcased_word = word.downcase
    first_row = rows[downcased_word[0]]

    answer.push(word) if downcased_word.chars.all? { |char| rows[char] == first_row }
  end

  answer
end

# 290. Word Pattern
# Easy
# Topics
# Companies
# Given a pattern and a string s, find if s follows the same pattern.

# Here follow means a full match, such that there is a bijection between a letter in pattern and a non-empty word in s.

# Example 1:

# Input: pattern = "abba", s = "dog cat cat dog"
# Output: true
# Example 2:

# Input: pattern = "abba", s = "dog cat cat fish"
# Output: false
# Example 3:

# Input: pattern = "aaaa", s = "dog cat cat dog"
# Output: false

# Constraints:

# 1 <= pattern.length <= 300
# pattern contains only lower-case English letters.
# 1 <= s.length <= 3000
# s contains only lowercase English letters and spaces ' '.
# s does not contain any leading or trailing spaces.
# All the words in s are separated by a single space.

# solution 1 has problems

def word_pattern(pattern, s)
  pattern = pattern.split('')
  s = s.split(' ')

  tracker = {}

  return false if pattern.length != s.length

  (0..pattern.length).each do |i|
    if !tracker.include?(pattern[i]) && !tracker.include?(s[i])
      tracker[pattern[i]] = s[i]
    elsif tracker.include?(pattern[i]) && tracker[pattern[i]] != s[i]
      return false
    end
  end
  true
end

# solution 1 fixed with one hash

def word_pattern(pattern, s)
  pattern = pattern.split('')
  s = s.split(' ')

  return false if pattern.length != s.length

  tracker = {}

  pattern.each_with_index do |char, i|
    if !tracker.include?(char) && !tracker.value?(s[i])
      tracker[char] = s[i]
    elsif tracker.include?(char) && tracker[char] != s[i]
      return false
    end
  end

  true
end

# solution 1 fixed with 2 hashes

def word_pattern(pattern, s)
  pattern = pattern.split('')
  s = s.split(' ')

  tracker = {}

  return false if pattern.length != s.length

  (0..pattern.length).each do |i|
    if !tracker.include?(pattern[i]) && !tracker.include?(s[i])
      tracker[pattern[i]] = s[i]
    elsif tracker.include?(pattern[i]) && tracker[pattern[i]] != s[i]
      return false
    end
  end
  true
end

# 392. Is Subsequence
# Easy
# Topics
# Companies
# Given two strings s and t, return true if s is a subsequence of t, or false otherwise.

# A subsequence of a string is a new string that is formed from the original string by deleting some (can be none) of the characters without disturbing the relative positions of the remaining characters. (i.e., "ace" is a subsequence of "abcde" while "aec" is not).

# Example 1:

# Input: s = "abc", t = "ahbgdc"
# Output: true
# Example 2:

# Input: s = "axc", t = "ahbgdc"
# Output: false

# Constraints:

# 0 <= s.length <= 100
# 0 <= t.length <= 104
# s and t consist only of lowercase English letters.

# solution 1 inefficient

def is_subsequence(s, t)
  t.chars do |char|
    t.delete! char unless s.include?(char)
  end
  s == t
end

# solution 2

def is_subsequence(s, t)
  s_index = 0
  t.each_char do |char|
    s_index += 1 if char == s[s_index]
    return true if s_index == s.length
  end
  s_index == s.length
end
