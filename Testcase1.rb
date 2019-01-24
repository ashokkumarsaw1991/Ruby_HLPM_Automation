class Testcase1
  #Login, Adding New TimeSheet,Editing the newly Added Timesheet & Logout
  require "selenium-webdriver"
  Selenium::WebDriver::Chrome.driver_path = "chromedriver.exe"
  driver = Selenium::WebDriver.for :chrome
  driver.navigate.to "https://staging.hllandscapes.com.au/hlpm/admin/dashboard.php"
  driver.find_element(:id,"username").send_keys("employee@mailinator.com")
  driver.find_element(:id,"password").send_keys("123456")
  driver.find_element(:xpath,"//button[@type='submit']").click()
  sleep 3
  #HIhihihiiihgg
  driver.manage().window.maximize()
  driver.find_element(:xpath,"//a[@href='timesheet.php?option=list&scope=user&listtype=pending']/span[contains(text(), 'Employee TimeSheet')]").click()
  sleep 2
  driver.find_element(:xpath,"//a[@class='btn blue']").click()
  sleep 3
  dropdown=driver.find_element(:xpath,"//select[@name='timesheet_project']")
  select_list = Selenium::WebDriver::Support::Select.new(dropdown)
  select_list.select_by(:text,"Test Project")
  sleep 2
  driver.find_element(:xpath,"//input[@name='timesheet_date']").click()
  driver.find_element(:link_text,"11").click()
  driver.find_element(:id,"type1").click()
  driver.find_element(:xpath,"//button[@type='button']").click()
  sleep 3
  dropdown=driver.find_element(:id,"cost_code_value[1]")
  select_list = Selenium::WebDriver::Support::Select.new(dropdown)
  select_list.select_by(:index,"1")
  driver.find_element(:xpath,"//input[@name='work_start_time']").send_keys("10:00")
  driver.find_element(:xpath,"//input[@name='work_end_time']").send_keys("15:00")
  driver.find_element(:xpath,"//button[@type='submit']").click()
  sleep 5
  driver.find_element(:xpath,"//span[.='EDIT']").click()
  sleep 5
  dropdown=driver.find_element(:id,"cost_code_value[0]")
  select_list = Selenium::WebDriver::Support::Select.new(dropdown)
  select_list.select_by(:index,"2")
  sleep 4
  driver.find_element(:xpath,"//span[@class='username']").click()
  driver.find_element(:xpath,"//span[@class='username']").click()
  driver.find_element(:xpath,"//a[@href='logout.php']").click()
  sleep 4
end