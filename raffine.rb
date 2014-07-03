#!/usr/bin/ruby
##file='./Producteurs_C.txt' ce fichier doit être passé en argument. Ex: ruby raffine.rb Producteurs_C.txt
##
File.readlines(ARGV[0]).each do |line|
  if line.include? "javascript:__doPostBack" ## peut-être faut-il aussi regarder "Immatriculée"
    puts "No unique: " + line.match(/&#39;\)">(.*)?<\/a><\/td>/)[1]
    puts "Nom: " + line.match(/td title="(.*)?" align=/)[1]
    puts "Adresse: " + line.match(/td align="center">(.*?)?<\/td><td align="center/)[1]
    puts "------"
  end
end


