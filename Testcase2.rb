class Testcase2
  #Login & Logout Operations
  require "selenium-webdriver"
  Selenium::WebDriver::Chrome.driver_path = "chromedriver.exe"
  driver = Selenium::WebDriver.for :chrome
  driver.navigate.to "https://staging.hllandscapes.com.au/hlpm/admin/dashboard.php"
  driver.find_element(:id,"username").send_keys("employee@mailinator.com")
  driver.find_element(:id,"password").send_keys("123456")
  driver.find_element(:xpath,"//button[@type='submit']").click()
  sleep 3
  driver.manage().window().maximize()
  driver.find_element(:xpath,"//span[@class='username']").click()
  driver.find_element(:xpath,"//span[@class='username']").click()
  driver.find_element(:xpath,"//a[@href='logout.php']").click()
  sleep 4
end