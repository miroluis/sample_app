require 'spec_helper'

describe "Static Pages" do
	let(:base_title) { "Ruby on Rails Tutorial Sample App" }
	subject { page }

	describe "Home page" do
		before { visit root_path } 


		it { should have_selector('h1',    text: 'Sample App') }
		it { should have_selector('title', text: full_title('')) }
	end
	describe "Help page" do
		it "should have the content 'Help'" do
			visit help_path #'/static_pages/help'
			page.should have_content('Help')
		end

		it "should have the title 'Help'" do
			visit help_path #'/static_pages/help'
			page.should have_selector('title', :text=> "#{base_title} | Help")
		end
	end
	describe "About page" do
		it "should have the content 'About Us'" do
			visit about_path #'/static_pages/about'
			page.should have_content('About Us')
		end

		it "should have the title 'About Us'" do
			visit about_path #'/static_pages/about'
			page.should have_selector('title', :text=> "#{base_title} | About Us")
		end
	end

	describe "Contact page" do

		it "should have the h1 'Contact'" do
			visit contact_path #'/static_pages/contact'
			page.should have_selector('h1', text: 'Contact')
		end

		it "should have the title 'Contact'" do
			visit contact_path #'/static_pages/contact'
			page.should have_selector('title',
				text: "Ruby on Rails Tutorial Sample App | Contact")
		end
	end
end
