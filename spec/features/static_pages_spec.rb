require 'spec_helper'

feature "StaticPages" do
  feature "GET /static_pages" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      page.status_code.should be 200
    end
  end
end


feature "About page" do
  it "should have the content 'About Us'" do
    visit '/static_pages/about'
    page.status_code.should be 200
  end
end

feature "Home page" do

  it "should have the h1 'Sample App'" do
    visit '/static_pages/home'
    page.should have_selector('h1', :text => 'Sample App')
  end
  it "should have the base title" do
    visit '/static_pages/home'
    page.should have_selector('title',
                              :text => "Ruby on Rails Tutorial Sample App", :visible => false)
  end

  it "should not have a custom page title" do
    visit '/static_pages/home'
    page.should_not have_selector('title', :text => '| Home')
  end




end
feature "Help page" do
  it "should have the h1 'Help'" do
    visit '/static_pages/help'
    page.should have_title('Help')
  end
  it "should have the title 'Help'" do
    visit '/static_pages/help'
    page.should have_title("Ruby on Rails Tutorial Sample App | Help")
  end
end
feature "About page" do
  it "should have the h1 'About Us'" do
    visit '/static_pages/about'
    page.should have_title('About Us')
  end
  it "should have the title 'About Us'" do
    visit '/static_pages/about'
    page.should have_title("Ruby on Rails Tutorial Sample App | About Us")
  end
end