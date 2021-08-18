require 'rails_helper'

RSpec.describe "notes/show", type: :view do
	current_user = User.first_or_create!(email: 'opalbai12@gmail.com', password: 'passpass12345', password_confirmation: 'passpass12345')
  	current_category = Category.first_or_create!(name: 'Business')

  	before(:each) do
  		@note = assign(:note, Note.create!(
  			title: 'a valid title',
      		content: 'a valid content',
      		user: current_user,
      		category: current_category
      ))
  	end

  	it "renders attributes in tags" do
  		render
  		expect(rendered).to match(/a valid title/)
  		expect(rendered).to match(/a valid content/)
  	end
end