require 'spec_helper'
describe "Static Pages" do
  describe "Home page" do
    it "should have the content 'Sample App'" do
    	visit '/static_pages/home'
    	page.should have_content('Sample App')
    end
    it "should have the title 'Home'" do 
    	visit '/static_pages/home'
    	page.should have_selector('title',
    								:text => "Collaborate | Home")
    end
  end
  describe "Contact Page" do
  	it "Should have the content 'Contact Us'" do 
  		visit '/static_pages/contact'
  		page.should have_content('Contact Us')
  	end
  	 it "should have the title 'Contact Us'" do 
    	visit '/static_pages/contact'
    	page.should have_selector('title',
    								:text => "Collaborate | Contact Us")
    end
  end
end
