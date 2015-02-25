#!/usr/bin/ruby
#Password/encrypted string generator by Mark Bryant | mabryant02@gmail.com
require 'rubygems' unless defined? Gem
require 'clipboard'
puts "Password Generator"
def pw_gen
  puts "Enter the base string to be encrypted: "
  base = gets.chomp
  puts "Enter salt characters ( 2 Characters only ): "
  entry = gets.chomp
  while entry.length != 2
    if entry.length > 2
      puts "Entered more than 2 characters, using only the first 2."
      break
    elsif entry.length < 2
      puts "Salt must be at least 2 characters, please enter again: "
      entry = gets.chomp
    end
  end
  result = base.crypt(entry)
  puts "Password is: #{result}"
  puts "Should the password be copied to the clipboard? Y/N: "
  copy = gets.chomp.downcase
  if copy == "y" || copy == "yes"
    Clipboard.copy(result)
    puts "Copied password to clipboard."
  end
  puts "Done? Y/N: "
  $done = gets.chomp.downcase    
end
pw_gen
while true	
  if $done == "y"
    break
  elsif 
    pw_gen
  end
end