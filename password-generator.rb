#!/usr/bin/ruby
#Password/encrypted string generator by Mark Bryant | mabryant02@gmail.com
require 'rubygems' unless defined? Gem
require 'clipboard' #clipboard gem is used for easy access to Windows clipboard.
puts "Password Generator"
def pw_gen
  puts "Enter the base string to be encrypted: "
  base = gets.chomp #This is the base string to be encrypted.
  puts "Enter salt characters ( 2 Characters only ): "
  entry = gets.chomp #This is the 2 character salt the .crypt method requires.
  while entry.length != 2 
    if entry.length > 2 #if > 2 characters .crypt will only use first 2.
      puts "Entered more than 2 characters, using only the first 2."
      break
    elsif entry.length < 2 #script will error out if < 2 characters entered.
      puts "Salt must be at least 2 characters, please enter again: "
      entry = gets.chomp
    end
  end
  result = base.crypt(entry) #store resulting encrypted string
  puts "Password is: #{result}"
  puts "Copy password to the clipboard? Y/N: "
  copy = gets.chomp.downcase
  if copy == "y" || copy == "yes"
    Clipboard.copy(result)
    puts "Copied password to clipboard."
  end
  puts "Done? Y/N: "
  $done = gets.chomp.downcase #global variable to access outside of method.
  														#there is probably a better way to do this.
end
pw_gen
while true	
  if $done == "y" || $done == "yes"
    break
  elsif 
    pw_gen
  end
end