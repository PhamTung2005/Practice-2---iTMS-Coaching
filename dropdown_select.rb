require 'selenium-webdriver'
require 'webdrivers'

browser = Selenium::WebDriver.for :chrome 
browser.get "http://www.practiceselenium.com/check-out.html"

options = browser.find_element(:id, "card_type")

select_opject = Selenium::WebDriver::Support::Select.new(options)
select_opject.select_by(:text, "Visa")

sleep 2

browser.quit