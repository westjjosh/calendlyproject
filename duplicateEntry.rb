require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome

driver.manage.timeouts.page_load = 10
driver.get "https://codepen.io/CalendlyQA/full/KKPQLmV"

wait = Selenium::WebDriver::Wait.new(:timeout => 10)
element = wait.until { driver.find_element(:id, "result") }

driver.switch_to.frame "result"

driver.find_element(:id, "number").send_keys('3')
driver.find_element(:id, "start").click
driver.find_element(:id, "number").send_keys('3')
driver.find_element(:id, "start").click
driver.find_element(:id, "number").send_keys('3')
driver.find_element(:id, "start").click

puts "Test Failed: Game allows board to be generated multiples times without reload"

driver.quit
