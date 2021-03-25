# require 'nokogiri'
# require 'open-uri'

# # html = open("https://flatironschool.com/")

# # doc = Nokogiri::HTML(html)

# doc = Nokogiri::HTML(open("http://flatironschool.com/")) #refactored line 4 and 6
# doc.css(".site-header__hero__headline")

# puts doc.css(".site-header__hero__headline").text

require 'nokogiri'
require 'open-uri'

html = open("http://flatironschool.com/")
doc = Nokogiri::HTML(html)

doc.css(".tout__label.heading.heading--level-4") 

courses = doc.css(".tout__label.heading.heading--level-4")

courses.each do |course|
  puts course.text.strip
end 

