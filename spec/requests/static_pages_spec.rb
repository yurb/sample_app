require 'spec_helper'

describe "Static pages" do
  describe "Home page" do
it "should have the h1 'Sample App'" do
visit root_path
page.should have_selector('h1', :content => 'Sample App')
    end
    it "should have the base title" do

    	visit root_path
    	page.should have_selector('title',
    		:content => "Ruby on Rails Tutorial Sample App")
    end

    it "Should not have a custom page title" do
        visit root_path
        page.should_not have_selector('title', :text => '| Home')
    end
end

describe "Help page" do
it "should have the h1 'Sample App'" do
visit help_path
page.should have_selector('h1', :content => 'Sample App')
    end
    it "should have the base title" do

        visit help_path
        page.should have_selector('title',
            :content => "Ruby on Rails Tutorial Sample App")
    end

    it "Should not have a custom page title" do
        visit help_path
        page.should_not have_selector('title', :text => '| Help')
    end
end

describe "About page" do
it "should have the h1 'Sample App'" do
visit root_path
page.should have_selector('h1', :content => 'Sample App')
    end
    it "should have the base title" do

        visit about_path
        page.should have_selector('title',
            :content => "Ruby on Rails Tutorial Sample App")
    end

    it "Should not have a custom page title" do
        visit about_path
        page.should_not have_selector('title', :text => '| About')
    end
end

describe "Contact Page" do
	it "should have the h1 'Sample App'" do
visit 'root_path'
page.should have_selector('h1', :content => 'Sample App')
    end
    it "should have the base title" do

        visit contact_path
        page.should have_selector('title',
            :content => "Ruby on Rails Tutorial Sample App")
    end

    it "Should not have a custom page title" do
        visit contact_path
        page.should_not have_selector('title', :text => '| Contact')
    end
end
end