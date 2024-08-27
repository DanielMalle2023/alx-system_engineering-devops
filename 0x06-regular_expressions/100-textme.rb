#!/usr/bin/env ruby

str = ARGV[0]
regex = /(?>from:(?<sndr>\+?\w+))|(?>to:(?<rcvr>\+?\w+))|(flags:(?<flgs>(:?\-?[0-9])+))/
matches = str.scan(regex)
res = ""

# if matches are found, then iterate over them to construct result
if matches
  matches.each do |match|
    len = match.length - 1
    for i in 0..len
      if match[i]
        res += match[i] if match[i]
        res += ',' if i < (match.length - 1)
      end
    end
  end
end
puts res
