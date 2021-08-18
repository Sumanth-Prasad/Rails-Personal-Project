require 'rails_helper'

RSpec.describe "notes/index", type: :view do
	current_user = User.first_or_create!(email: 'opalbai12@gmail.com', password: 'passpass12345', password_confirmation: 'passpass12345')
  	current_category = Category.first_or_create!(name: 'Business')
  	before(:each) do
  		assign(:notes, [
	  		Note.create!(
	  			title: 'a valid title',
	      		content: 'a valid content',
	      		user: current_user,
	      		category: current_category
	        ),
	        Note.create!(
	  			title: 'a valid title',
	      		content: 'a valid content',
	      		user: current_user,
	      		category: current_category
	        )
	    ])
  	end

  	it "renders a list of notes" do
  		render
  		assert_select "div>a>div", text: 'a valid title'.to_s, count: 2
  		end
  	end