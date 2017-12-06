require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "что-то лежит в странице дом" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "заголовок дом" do
      visit '/static_pages/home'
      expect(page).to have_title("Home")
    end
  end

  describe "Help page" do

    it "хэлб самбади хэлб'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "хэлб ин тайтле" do
      visit '/static_pages/help'
      expect(page).to have_title("Help")
    end
  end

  describe "About page" do

    it "эбаут тело" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "эбаут заголовок" do
      visit '/static_pages/about'
      expect(page).to have_title("About Us")
    end
  end
end