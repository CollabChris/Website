require 'spec_helper'

describe "Static Pages" do
  describe "Home page" do
    it "should have the title 'Collaborate'" do 
    	visit root_path
    	page.should have_selector('title',
    								:text => full_title(''))
    end
  end
  describe "Contact Page" do
  	it "Should have the content 'Contact Us'" do 
  		visit about_path
  		page.should have_content('Contact Us')
  	end
  	 it "should have the title 'Contact Us'" do 
    	visit contact_path
    	page.should have_selector('title',
    								:text => "Collaborate | Contact Us")
    end
  end
end
