require 'rubygems'
require 'selenium-webdriver'
require 'webdriver'
 
browser = Selenium::WebDriver.for :firefox
browser.get 'http://www.practiceselenium.com/check-out.html'

options = browser.find_element(:id, "card_type")
# puts options.inspect
select_object = Selenium::WebDriver::Support::Select.new(options)
select_object.select_by(:text, "Visa")
#select_object.select_by(:index, 3)
#select_object.select_by(:value, "3")
sleep 3
browser.quit