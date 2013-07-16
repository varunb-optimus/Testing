Feature: Login

Scenario Outline: Login on Flipkart usingvalid credentials
	Given I navigate to Flipkart
	And I login using "<username>" and "<password>"
	Then the User should successfully login with ID "<searchText>"
	
Scenarios:
	|username|password|searchText|
	|varunb2110@gmail.com|varunb21|varunb2110| 
	