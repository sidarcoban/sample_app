require 'spec_helper'
describe "Static_pages" do
  subject { page }
  describe "Home_page" do
    before { visit "/" }
    it { should have_selector('h1', text: 'Sample App') }
    it { should have_selector('title', text: full_title(''), visible: false ) }
    it { should_not have_selector( 'title', text: '| Home') }
  end
  describe "Help_page" do
    before { visit help_path }
    it { should have_selector('h1', text: 'Help') }
    it { should have_selector('title', text: full_title('Help')) }
  end
  describe "About_page" do
    before { visit about_path }
    it { should have_selector('h1', text: 'About') }
    it { should have_selector('title', text: full_title('About Us')) }
  end
  describe "Contact_page" do
    before { visit "contact" }
    it { should have_selector('h1', text: 'Contact') }
    it { should have_selector('title', text: full_title('Contact'), visible: false ) }
  end
end
