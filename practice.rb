# puts "Hey Meerab!";
# puts "";
# # "*********  Now this one is showing group comment ***********";
# =begin
# This line is a comment
# This too
# again this one
# above all line are commented
# and me tooo :D
# =end

# #*******************  Ending group Comment   ********************

# #*******************   Arrays   ********************
# =begin
# puts "************   Array   **************"
# arr = ["Meerab", 20, 90, "Waiting","Done!"]
# arr.each do |i|
#   puts i
# end

# =end

# #*******************   Strings   ********************
# =begin
# to print an appostrophe, we have to place a backslash before appostrophe so that
# the interpretor will not consider it as a breaker
# =end
# #puts "I\'m trying to print the appostrophe!"


# #*****************************     Methods    ****************************
# =begin
# def fullName (fname = "Meeru", lname = "Malik")
#   puts "First name is : #{fname}"
#   puts "Last name is : #{lname}"
# end

# # Function Calling
# puts "Calling function by passing values/parameters"
# fullName "Meerab","Rafique"

# puts ""
# puts "Calling function via default parameters"
# fullName

# =end

# #****************  Passing multiple parameters to method   *****************
# =begin
# def multipleParameters(*params)
#   puts "Number of parameters are #{params.length}"
#   for i in 0...params.length
#     puts "Parameters are #{params[i]}"
#   end
#   puts ""
# end

# # function calling
# multipleParameters "Meeru", "Maika", "Eehu"
# multipleParameters "Maarab", 20, "Done", "okay", "Hurrrah!"
# =end

# #**************************  Hash in ruby  **************************
# # It is a collection of key => value pairs

# =begin
# name_hash = {
#   "name" => "Meerab",
#   "city" => "Lahore",
#   "Siblings" => 5,
#   1 => "okay"
# }

# puts name_hash["city"]
# puts name_hash["Siblings"]
# puts name_hash[1]

# #**********  Another way to creating a hash is ************

# age_hash = Hash.new
# age_hash["maika_Age"] = 20
# age_hash["meeru_age"] = 18

# puts "Meeru age is #{age_hash["meeru_age"]}"


# restaurant_menu = { "Ramen" => 30, "Dal Makhani" => 40, "Coffee" => 20 }
# restaurant_menu.each do | item, price|
#   puts "#{item}: #{price}Rs"
# end

# =end



# #***************************    Taking input from user   *******************
# =begin
# print "Enter your name : "
# userName = gets.chomp
# puts "Your name is #{userName.upcase}"

# =end

# #***************  String  ***************
# =begin
# myStr = "Geeks for Geeks one more time for better understanding"
# puts "Actual String is #{myStr.upcase}"
# puts "......................................"

#  # Split string with single whitesapce
#  newStr = myStr.split
#  puts newStr
#  puts "......................................"

#  # here pattern is a regular expression
#  # limit value is 2
#  # / / is one white space

#  newStr1 = myStr.split(/ /,3)
#  puts newStr1
#  puts "......................................"

#  # Here the pattern is the regular expression
#  # limit value is -1
#  # if the limit is then there is no limit to
#  # the number of fields returned,
#  # and trailing null fields are not
#  # suppressed

#  newStr2 = myStr.split('s',-1)
#  puts newStr2
#  puts "......................................"

# =end



# #************ String Slicing ************
# =begin
# b = [18, 22, 33, 5, 6, 10, 98,78]
# puts "#{b.slice(1..3)}"

# # puts "slice() method form : #{b.slice(1, 3)}\n\n"
# =end

# #************ String Concatenation ************

# =begin
# a = "Hello"
# b = "World"
# c = a + " "+b

# puts "String concatenation is #{c}"

# f = "First"
# g = "Last"

# #Another way of concating is
# c = f << " "<<g
# puts c

# #Another way of concating is

# d = "first".concat("last")
# puts "d : #{d}"

# =end

# #********************* Replacing a substring ********************

# =begin

# puts "Actual String : I should look into your problem when I get time"
# # sub() matheod will only replaced the first occurrence of the term we were looking for
# repStr = "I should look into your problem when I get time".sub('I','We')
# puts "Replacing string using \'sub() \'#{repStr}"
# puts "....................................................................."

# #In order to replace all occurrences we can use a method called gsub() which has a global scope.
# repStr2 = "I should look into your problem when I get time".gsub('I','We')
# puts "Replacing string using \'gsub() \'#{repStr2}"
# puts "....................................................................."


# #Regular Expressions or RegExs are a concise and flexible means for "matching" particular characters,
# #words, or patterns of characters. In Ruby you specify a RegEx by putting it between a pair of forward slashes (/).

# repStrExp = "I should look into your problem when I get time".gsub(/[aeiou]/,'*')
# puts "Replacing string using Regular Expression #{repStrExp}"

# =end

# #a = 'RubyMonk Is Pretty Brilliant'.match(/s ./)
# #puts a

# #***********************************    Lambda   **************************
# =begin
# lam = lambda {"Taking concepts of lambda"}
# puts lam.call

# lam2 = lambda do |string|
#   if string == "Meerab"
#     puts "Welcome #{string}"
#   else
#     puts "No one is here!"
#   end
# end

# puts lam2.call("Meerab")

# puts "...................................................."

# Increment = lambda { |number| number+1}

# puts Increment.call(5)




# #***********************************   Modules   ********************************

# # interestingly, Module is a superclass of a class
# # it means that all classes are also modules

# =begin

# module WarmUp
#   def push_ups
#     "phew, I need a break"
#   end
# end

# class Gym
#   include WarmUp

#   def preacher_curls
#     "I'm building my biceps"
#   end
# end

# class Dojo
#   include WarmUp

#   def tai_kyo_kyu
#     "Look at my stance!"
#   end
# end

# puts Gym.new.push_ups
# puts Dojo.new.push_ups

# =end


# #*************************  Variables ************************

# # i = 5
# # p i     # Here, "p" is representing to "puts"  and also working the same as "puts"

# #*************************  Blocks  ******************************

# # A block is code that you can store in a variable like any other object and run on ddemand

# =begin
# def check_block(number)
#   yield(number)
# end

# puts check_block(1) {|number| number + 1}


# =end

# # The lambda keyword is what is mostly used to create a block in Ruby.
# # There are other ways to do it but lets keep things simple for now
# # Blocks are also objects

# =begin
# empty_block = lambda{}
# puts empty_block.object_id
# puts empty_block.class
# puts empty_block.class.superclass
# =end

# # As you can see, the block we just created has an "object_id", belongs to the class "proc"
# # and which is itself a subclass of "Object"


# #***************************  Local Variables  **************************
# # Syntax : abc, x, var etc
# # it is written in small letters without
# # it's scope is local
# # it is used inside "methods" and "loops"
# # Example :

# =begin
# p "Local Variable"
# 2.times do
#   x = 10  # Here, "x" is a local variable that only can access and used inside this scope
#   p "x : #{x}"
# end
# =end

# #***************************  Global Variables  **************************
# # For Global variable, we use "$" sign before name of variable
# # Syntax : $abc, $x, $var etc
# # It can access globally means in the entire application

# =begin
# p "Global Variable"
# 2.times do
#   $y = 50  # Here, "x" is a gloabl variable that can access and used inside and outside that scope
#   p "$y : #{$y}"
# end

# puts "We are able to access y outside the loop bcz it is a global variable"
# p "$y : #{$y}"
# =end

# #******************************************************************************
# #***************************  Instance Variables  **************************
# #******************************************************************************

# # Instance variable always start with "@" sign
# # Syntax : @abc, @x, @var etc
# # It is a variable that is available to an "instance"
# # They are different for every instance of object
# # we can fetch / get the value of "instance variable" by creating an "instance method"


# #***************************  Class Variables  **************************
# #******************************************************************************

# # Class variable always start with "@@" sign
# # Syntax : @@abc, @@x, @@var etc
# # They are as a global variable in context to the class they are defined in
# # We cannot access "class variable" directly outside the class
# # For accessing the "class variables" outside the class, we have to define an
# # "instance method"
# # When we define method inside the class, is known as "Instance method"
# # Then, we'll call that "instance method" through the object of class

# #******************************************************************************
# #******************************************************************************

# # Examples

# =begin

# class Student
#   # class variable
#   @@no_of_courses = 0

#   # constructor
#   def initialize(course)    # whenever, this method or constructor will be called
#     @@no_of_courses += 1;   # The number of courses will be increased by 1
#     @course_name = course   # "instance variable" initialization
#   end

#   # Now, we'll create an instance method
#   def print_no_of_courses
#     @@no_of_courses
#   end

#   def name
#     @course_name
#   end

# end

# # create an object of class Student
# student1 = Student.new("Ruby Programming")

# # course name print
# p "Name of course : #{student1.name}"

# student1 = Student.new("React JS")

# # course name print
# p "Name of course : #{student1.name}"

# # student2 = Student.new("Ruby Programming")
# # student2 = Student.new("React JS")
# # student2 = Student.new("Python")
# # student2 = Student.new("React Native")
# # student2 = Student.new("CSharp")

# # Now, we'll call the "indtance method" using the object for student1
# # courses_count = student1.print_no_of_courses

# # # Now, we'll call the "indtance method" using the object for student2
# # courses_count2 = student2.print_no_of_courses

# # Print number of courses against student1
# # p "No of courses against student1 : #{courses_count}"

# # # Print number of courses against student2
# # p "No of courses against student2 : #{courses_count2}"


# =end

# # ****************************  String  ******************************

# =begin

# a = "Meerab"
# b = "Malik"

# # Getting index of string
# p "Last character of string : #{a[-1]}"
# p "Length of string : #{a.length}"

# # String Slicing
# start_index = 2
# length = 4

# p a[start_index..length]

# #               **************   String Freezing    ************
# # If I freeze the string that can't modify or apply operation on it like concatenation
# # use "freezing" to make string immutable

# #  Concatenation before "freezing"
# c = a << " " << b
# p "Concatenation before freezig #{c}"

# #  Freezing
# # a.freeze

# # Concatenation after "freezing"
# # c = a << " " << b
# # p c

# #                 **************   String Interpolation   *************

# # String interpollation :
# #             If you want to put some variables inside a
# #             string and want to print that string, is known as string interpolation
# #  Example of String Interpolation is  given below
# puts ""
# puts "String interpolation syntax is '# { variable name }'"
# name = "Meerab"
# puts "Welcome, #{name}!"

# =end

# # ***************************************************************
# # ***********  Some Useful methods of Strings in Ruby ***********
# # ***************************************************************
# #
# # .length or .size
# # .include
# # .downcase or .upcase
# # .split and .each_char
# # .count
# #
# # ***************************************************************
# # ***************************************************************

# # .include => To search or check either the character or word is present in a string or not
# #  This will return a result in the form of "True / False"
# #  Example :

# =begin

# str = "I am a newbie in Ruby Programming"
# p str.include?('m')

# # .split and .each_char => used to convert a string into an array
# #  Example :

# p str.each_char.to_a    # "to_a" will convert the string into an array of characters

# #  "Split" will split the string into an array
# p str.split

# # .count => To count any particular letter that how many times it's repeated into a string
# #  Example

# p str.count('a')

# =end
# # ********************************    Ranges    ****************************

# =begin
# range = Range.new(1,12, exclude_end = true).to_a
# p range


# p 1111111.class
# p 1.class

# =end

# # ********************************    Arrays    ****************************

# =begin

# arr = Array.new(5, "Meeru")   # It'll print "Meeru" to 5 times
# arr1 = Array.new(5, 12)   # It'll print 12 , 5 times

# puts arr
# puts "..........."
# puts arr1

# arr3 = Array(20..25)        # Array using range
# puts "..........."
# puts arr3

# arr5 = Array.new([10,20,30])
# puts "..........."
# puts arr5

# =end

# # *********************  Block **********************
# # ***************************************************

# # Block : it is not an object because it's written inside curly braces
# # so, it's a set of code
# # Block has also a name
# # A block is always invoked from a function with the same name as that of the block
# # We always invoke a block by using the "yield" statement

# # ***************************  Syntax of block without parameters  ****************************

# =begin

# # define a method
# def test()
#   puts "we are taking the concept of block without parameters"
#   yield     # This "yield" will call the "test block"
# end

# # define the block of same name as of method
# test{
#   puts "I'm in the block"
# }

# # ***************************  Syntax of block with parameters  ****************************

# # define a method
# def test()
#   puts "we are taking the concept of block with parameters"
#   yield "five",5
# end

# # define the block of same name as of method
# test { |a,b|
#   puts "I'm in the block"
#   # To access the parameter, we'll use the "|| pipe " operator
#   puts "We are in the block #{a} and #{b}"
# }

# =end

# # *********************  proc, lambda   **********************

# # proc
# # ......
# # Everything in ruby is an object
# # But Ruby Blocks are not object
# # In order to convert these blocks into objects, we are using this "proc class"
# # "Proc class" can turn "Block" into an object by wrapping locks in its instance
# # This turns our block into "first calss function" and then we can perform all sorts
# # of things with Blocks as we can do with a normal object

# # ............  4 ways to create a Proc class  ................

# # 1- using "Proc.new"  // syntax to wrap a block into an instance of "proc class"
# # 2- using the "proc method" into the "kernal module"
# # 3- using the "kernal lambda methods"
# # 4- "IMPLICIT way" - Two ways :
# #                     1- using the "yield" statement
# #                     2- using the concept of " &Block "

# =begin

# # 1- using "Proc.new"
# proc_object = Proc.new {
#   puts "1- proc object using 'Proc.new'"
# }

# proc_object.call

# # 2- using the "proc method" into the "kernal module"
# proc_object2 = proc{
#   puts "2- proc object using 'proc method' into the kernal module"
# }

# proc_object2.call
# puts "   Is proc object a lambda ? #{proc_object2.lambda?}"

# # 3- using the "kernal lambda methods"
# proc_object5 = lambda{
#   puts "3- proc object using the 'kernal lambda method'"
# }

# proc_object5.call
# puts "   Is proc object a lambda ? #{proc_object5.lambda?}"


# #  There is a one simple way to create Lambda

# =end

# # ******************************    Modules    ******************************
# # Modules are a way of grouping together "methods", "classes" and "constants"
# # Modules provide a "namespace" and prevent from "name clashes"

# # Syntax:
# #       module Module_name
# #
# #       end
# #
# # Name of module starts with capitals similar to the class
# # Name of constants starts with capitals similar to the class const

# =begin

# module  Test
#   PI = 3.14

#   # define a method
#   def Test.abc(x)
#     puts "Here, is a module #{x}"
#   end
# end

# puts Test::PI
# Test.abc(1)

# =end

# # ******************  Class within module  ******************
# # Syntax :
# #         module Module_name
# #           class Class_name
# #             def mymethod
# #               .................
# #               your code here
# #               .................
# #             end
# #           end
# #         end
# #
# # obj = Module_name::Class_name.new   // As, we know that "Class_name.new" creates an object
# # obj.mymethod  // It'll call the method inside the module's class



# # ******************************   require / require_relative statement   ******************************

# #  It is similar to "include" statement of C and C++ (eg. #include <iostream>)
# #  And this statement (eg. #include <iostream>) of C++ inculdes the "standard I/O Library"
# #
# #  This "require" statement is used to include any defined ruby "program / file" into another "program / file"
# # ....................................................................
# #  Syntax :
# #         $LOAD_PATH << '.'  // First you have to load the path of a file to which you want to incorporate in ruby program
# #         require "filename"
# # ....................................................................
# #  if you don't want to use "$LOAD_PATH << '.'" then you
# #  can use require_relative "filename"
# # ....................................................................
# #  Where to use these statement?
# #     Suppose you have to individual programs/files named as
# #     addition.rb  and sub.rb
# #     and you want to add both programs into another program named as "math.rb"
# #     then we will use these require statement
# # .................................................................................

# =begin

# name = "Meerab"
# puts name.downcase!

# puts name.upcase!

# puts name
# puts name

# =end



# # ********************  each method for arrays  **********************
# # toppings = ["pepperoni", "mashrooms", "baccon", "pineapple"]

# # def pizza(toppings)
# #   my_statements = []
# #   toppings.each do |topping|
# #     puts "I love #{topping} pizza"
# #   end
# # end

# # pizza(toppings)
# # puts "............. each ................"
# # arr = [1,2,3]
# # values = arr.each do |n|
# #   2*n
# # end
# # puts values
# # puts "............. map ................"
# # values = arr.map do |n|
# #   2*n
# # end
# # puts values

# # myFile = File.open("Dubai_weather_2004_Aug.txt")
# # abc = myFile.readlines()

# # p abc[2]
# # abc.each do |a|
# #   t=a.split(',')
# #   p t[2]
# # end

# # a = File.expand_path(__FILE__)
# # puts "Absolute pathname of the currently executing file : #{a}"

# # b = File.dirname(File.expand_path(__FILE__))
# # puts "Absolute directory name of the currently executing file : #{b}"

# p Dir.pwd
# Dir.chdir "./lahore_weather"
# p "Current directory : #{Dir.pwd}"
# xyz = Dir['*.txt']
# abc = xyz.each { |files| puts files}


# **********************       Count number of lines in a file in ruby       *****************************
# filename = 'a_file/somewhere.txt'
# line_count = `wc -l "#{filename}"`.strip.split(' ')[0].to_i
# p line_count


