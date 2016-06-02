#!/usr/bin/env ruby

# This script prints out the ingredients list for Martha Stewarts
# 'brick pressed sandwich'  It's the first nokogiri gem exercise.

require 'nokogiri'
require 'open-uri'


doc = Nokogiri::HTML(open('http://www.marthastewart.com/312598/brick-pressed-sandwich'))

puts doc.css('li[itemprop=ingredients]').inner_html
