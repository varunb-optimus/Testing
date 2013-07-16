class ApplicationPage
    include PageObject

    direct_url BASE_URL

	#Find id's, name and other attributes using Firebug
	
	#links
	
    link :linkName, :text => "linkText", :href => "location where link navigates"
	link :loginhomePage, :text => "Login", :href=> "/account/login"
    
	#buttons
	button :buttonName, :id => "buttonId"
	button :Login, :value=> "Login"
	
	
	#textfields
	text_field :textfieldName, :id => "id of the text field"
	text_field :loginTextField, :id=> "login_email_id"
	text_field :loginPassword, :id=> "login_password"
    
	#list
	select_list :listName, :id =>"listName ID"

    #checkbox
	checkbox :custom_group, :id => "check box id"
    
	#pageTitle
    div :page_title, :class => "class for page title"

    
	#if a web element exists within a frame
	
	
	
	def enterTextInFieldWithinFramebyID(frameName, textFieldID, text)
		searchField = @browser.frame(:id => 'frameName').text_field(:id, 'textFieldID')
        searchField.set 'text'
	end
	
	
	def enterTextInFieldbyID(text_Field, text)
		$textField=self.text_Field
		$textField.set text
	end
	
	
	def navigateToURL(url)
		@browser = Watir::Browser.new :ff
		@browser.goto 'url'
	end
	
	def clickButton(buttonName)
		$buttonName=self.buttonName
		searchButton = @browser.button(:name, '$buttonName')
		searchButton.click
	end
	
	def clickLink(linkName)
		searchLink = @browser.link(:href, 'linkName')
		searchLink.click
	end
	
end
