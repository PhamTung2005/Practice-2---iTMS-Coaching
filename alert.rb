require 'selenium-webdriver'
require 'webdrivers'

browser = Selenium::WebDriver.for :chrome
browser.get "https://www.seleniumeasy.com/test/javascript-alert-box-demo.html"

# Alert bình thường:

# browser.find_element(xpath: '/html[1]/body[1]/div[2]/div[1]/div[2]/div[1]/div[2]/button[1]').click

# alert = browser.switch_to.alert
# sleep 2
# alert.accept

# Alert Confirmation:

# browser.find_element(xpath: '/html[1]/body[1]/div[2]/div[1]/div[2]/div[2]/div[2]/button[1]').click

# alert = browser.switch_to.alert
# sleep 2
# alert.dismiss

# Alert Prompt:

alert_button = browser.find_element(xpath: '/html[1]/body[1]/div[2]/div[1]/div[2]/div[3]/div[2]/button[1]')
alert_button.click

alert = browser.switch_to.alert

alert.send_keys ("Selenium")
sleep 2
alert.accept

browser.quit
