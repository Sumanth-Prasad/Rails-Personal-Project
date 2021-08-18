# require 'rails_helper'
# include NotesHelper
# RSpec.describe NotesHelper, type: :helper do
#   it 'assigns a user to a note' do
#     current_user = User.first_or_create!(email: 'opalbai12@gmail.com', password: 'passpass12345', password_confirmation: 'passpass12345')
#     current_category = Category.first_or_create!(name: 'Business')
#     @note = Note.new(
#       title: 'a valid title',
#       content: 'a valid content',
#       category: current_category
#     )
#     assign_note_current_user(@note, current_user)
#     expect(@note.user).to be(current_user)
#   end
# end