class Testcase3
  #Login, Adding New Annual Leave  & Logout
  require "selenium-webdriver"
  Selenium::WebDriver::Chrome.driver_path = "chromedriver.exe"
  driver = Selenium::WebDriver.for :chrome
  driver.navigate.to "https://staging.hllandscapes.com.au/hlpm/admin/dashboard.php"
  driver.find_element(:id,"username").send_keys("employee@mailinator.com")
  driver.find_element(:id,"password").send_keys("123456")
  driver.find_element(:xpath,"//button[@type='submit']").click()
  sleep 3
  driver.manage().window().maximize()
  driver.find_element(:link_text,"Annual Leave Register").click()
  sleep 3
  driver.find_element(:xpath,"//a[@class='btn blue']").click()
  dropdown=driver.find_element(:xpath,"//select[@name='user_id']")
  select_list = Selenium::WebDriver::Support::Select.new(dropdown)
  select_list.select_by(:index,"13")
  driver.find_element(:id,"start_date").click()
  driver.find_element(:link_text,"20").click()
  driver.find_element(:id,"end_date").click()
  driver.find_element(:link_text,"30").click()
  driver.find_element(:id,"contents").send_keys("Please Approve The Leave Immediately")
  driver.find_element(:xpath,"//button[@type='submit']").click()
  sleep 4

end