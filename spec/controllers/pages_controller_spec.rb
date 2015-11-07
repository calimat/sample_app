require 'spec_helper'


describe PagesController do
  render_views

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    it "should have the right title" do
      get :home
      expect(response.body).to have_selector('title', 
        :text => "Ruby on Rails Tutorial Sample App | Home")
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
    it "should have the right title" do
      get :contact
      expect(response.body).to have_selector('title', 
        :text => "Ruby on Rails Tutorial Sample App | Contact")
    end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
    it "should have the right title" do
      get :about
      expect(response.body).to have_selector('title', 
        :text => "Ruby on Rails Tutorial Sample App | About")    
    end
  end

end
