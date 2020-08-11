require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome

driver.manage.timeouts.page_load = 10
driver.get "https://codepen.io/CalendlyQA/full/KKPQLmV"

wait = Selenium::WebDriver::Wait.new(:timeout => 10)
element = wait.until { driver.find_element(:id, "result") }

driver.switch_to.frame "result"

driver.find_element(:id, "number").send_keys('3')
driver.find_element(:id, "start").click

driver.find_element(:id, "6").click
driver.find_element(:id, "8").click
driver.find_element(:id, "3").click
driver.find_element(:id, "5").click
driver.find_element(:id, "0").click

puts "Test Failed: Incorrect Winner displayed"

driver.find_element(:id, "2").click

puts "Test Failed: Game result changed after game end"

driver.quit
