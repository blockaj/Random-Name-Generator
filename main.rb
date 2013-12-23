#!/usr/bin/env ruby
require "./RandomNames"

if __FILE__ == $0
	name_gen = RandomNameGenerator.new
	name_gen.printName
end