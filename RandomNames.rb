require "rubygems"
require "open-uri"

class RandomNameGenerator 
	def intialize
		puts "New name generator object intialized."
	end
	def getRandomFile
		randomYear = 1880 + rand(132)
		randomFileName = "./names/yob#{randomYear}.txt"
		return randomFileName
	end
	def openFileAndGetFirstNames
		names = Array.new
		open(getRandomFile) {|file|
			file.each_line {|line|names << line}
		}
		name = rand(names.length)
		personsName = names[name]
		personsName = personsName[/[^,]+/]
		return personsName
	end
	def openFileAndGetLastNames
		last_names = Array.new
		open("names.txt") {|file|
			file.each_line {|line|last_names << line}
		}
		lastName = rand(last_names.length)
		personsLastName = last_names[lastName]
		personsLastName = personsLastName[/[^ ]+/]
		personsLastName.capitalize!
		return personsLastName
	end
	def printName
		puts "#{openFileAndGetFirstNames} #{openFileAndGetLastNames}"
	end
end