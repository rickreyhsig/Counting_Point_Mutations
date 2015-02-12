#!/usr/bin/env ruby

# Obtain file contents
file_content = ARGV[0]

# Place file content in file variable
file = File.open(file_content, "r")

# Read file contents and place it inside variable
dna_strings = file.read

# Place strings in array one element per line
dna_array = dna_strings.split(/\r?\n/)

#puts dna_array.inspect

dna0 =  dna_array[0].chars.to_a
dna1 =  dna_array[1].chars.to_a
pt_mutation = 0

dna_array[0].chars.to_a.each_with_index do |char, index|
  pt_mutation +=1 if  dna0[index] != dna1[index]
end

puts pt_mutation
