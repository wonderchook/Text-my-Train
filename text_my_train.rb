#!/usr/bin/env ruby
require 'texty'
require 'trainy'

#more_text = Texty.new
#more_text.text_out("7036738834", "yay classy")

get_wmata = Trainy.new
puts get_wmata.next_train("A10")
