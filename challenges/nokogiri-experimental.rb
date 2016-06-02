#!/usr/bin/env ruby

require 'nokogiri'
require 'open-uri'


#doc = Nokogiri::HTML(open('http://www.skillcrush.com'))
doc = Nokogiri::HTML(open('http://www.marthastewart.com/312598/brick-pressed-sandwich'))


#puts doc.css('.entry-title').inner_html


puts doc.css('li[itemprop=ingredients]').inner_html
#puts doc.css('li#components-item') 

#puts doc.methods
