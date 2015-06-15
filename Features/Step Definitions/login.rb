require 'watir-webdriver'

#This is a new commit
#to verify rollback1111

Given(/^I navigate to Flipkart$/) do
  on ApplicationPage do |page|
  page.loginhomePage_element.when_present.click
  end
end

Given(/^I login using "(.*)" and "(.*)"$/) do |username, password|
  on ApplicationPage do |page|
  
  page.loginTextField = username
  page.loginPassword = password
  sleep(2)
  
  click_button(page.Login)
  sleep(5)
  
  end
end

Then(/^the User should successfully login with ID "(.*)"$/) do |searchText|
if verify(@browser.text.include?(searchText))==true
      puts 'Pass'
  else
      puts 'Fail'
end
	
  
end
