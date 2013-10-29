require 'spec_helper'

describe "Static pages/" do

	describe "Home page" do

		it "should have the content 'Home'" do
			visit '/static_pages/home'
			expect(page).to have_selector('h1', :text => 'Home')
			expect(page).to have_content('기도제목을 나누고 말씀을 나누는 창입니다.')
		end
		it "should have the base title" do
			visit '/static_pages/home'
			expect(page).to have_title("기도제목 Web Sharing")
		end
	end
		it "should not have a custom page title" do
			visit '/static_pages/home'
			expect(page).to_not have_title("| Home")
		end

	describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_selector('h1', :text => 'Help')
    end
    it "should have the title" do
			visit '/static_pages/help'
			expect(page).to have_title("기도제목 Web Sharing | Help")
		end
  end
	describe "About page" do

    it "should have the content 'About'" do
      visit '/static_pages/about'
      expect(page).to have_selector('h1', :text => 'About')
    end
    it "should have the title" do
			visit '/static_pages/about'
			expect(page).to have_title("기도제목 Web Sharing | About")
		end
  end
end