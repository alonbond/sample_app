require 'test_helper'

class LayoutLinksTest < ActionDispatch::IntegrationTest
  fixtures :all

  it "should have a Home page at'/'" do
    get '/'
    response.should have_selector('title', :content =>"Home")
  end  
  
  
  it "should have a Contact page at'/contact'" do
    get '/contact'
    response.should have_selector('title', :contect =>"Contact")
  end  
  
  
    it "should have an About page at'/about'" do
      get '/about'
      response.should have_selector('title', :content =>"About")
    end
    
    
    it "should have a Help page at'/help'" do
      get '/help'
      response.should have_selector('title', :content =>"Page")
    end
    
  test "the truth" do
    assert true
  end
end
