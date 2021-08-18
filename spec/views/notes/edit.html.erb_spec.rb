require 'rails_helper'

RSpec.describe "notes/edit", type: :view do
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

  	it "renders the edit note form" do
  		render

  		assert_select "form[action=?][method=?]", note_path(@note), "post" do
  			assert_select "input[name=?]", "note[title]"
  			assert_select "select[name=?]", "note[category_id]"
  			assert_select "textarea[name=?]", "note[content]"
  		end
  	end
end