# require 'rails_helper'

# RSpec.describe '/notes', type: :request do
#   current_user = User.first_or_create!(email: 'opalbai12@gmail.com', password: 'passpass12345', password_confirmation: 'passpass12345')
#   current_category = Category.first_or_create!(name: 'Business')

#   let(:valid_attributes) do
#     {
#       'title' => 'a valid title',
#       'content' => 'a valid content',
#       'user' => current_user,
#       'category' => current_category
#     }
#   end

#   let(:invalid_attributes) do
#     {
#       'title' => 'x',
#       'content' => 'x'
#     }
#   end

#   describe 'GET /index' do
#     it 'renders a successful response' do
#       note = Note.new(valid_attributes)
#       note.user = current_user
#       note.category = current_category
#       note.save
#       get notes_url
#       expect(response).to be_successful
#     end
#   end

#   describe 'GET /show' do
#     it 'renders a successful response' do
#       note = Note.new(valid_attributes)
#       note.user = current_user
#       note.save
#       get note_url(post)
#       expect(response).to be_successful
#     end
#   end

#   describe 'GET /new' do
#     it 'renders a successful response' do
#       get new_note_url
#       expect(response).to be_successful
#     end
#   end

#   describe 'GET /edit' do
#     it 'render a successful response' do
#       note = Note.new(valid_attributes)
#       note.user = current_user
#       note.save
#       get edit_note_url(note)
#       expect(response).to be_successful
#     end
#   end

#   describe 'POST /create' do
#     context 'with valid parameters' do
#       it 'creates a new Post' do
#         expect do
#           note = Note.new(valid_attributes)
#       	  note.user = current_user
#       	  note.save
#           note notes_url, params: { note: valid_attributes }
#         end.to change(Note, :count).by(1)
#       end

#       it 'redirects to the created post' do
#         note notes_url, params: { post: valid_attributes }
#         expect(response).to be_successful
#       end
#     end

#     context 'with invalid parameters' do
#       it 'does not create a new Post' do
#         expect do
#           note notes_url, params: { note: invalid_attributes }
#         end.to change(Note, :count).by(0)
#       end

#       it "renders a successful response (i.e. to display the 'new' template)" do
#         note notes_url, params: { note: invalid_attributes }
#         expect(response).to be_successful
#       end
#     end
#   end

#   describe 'PATCH /update' do
#     context 'with valid parameters' do
#       let(:new_attributes) do
#         {
# 	      'title' => 'a valid title',
# 	      'content' => 'a valid content',
# 	      'user' => current_user,
# 	      'category' => current_category
#     	}
#       end

#       it 'updates the requested post' do
#         note = Note.new(valid_attributes)
#       	note.user = current_user
#       	note.save
#         patch note_url(note), params: { note: new_attributes }
#         note.reload
#         skip('Add assertions for updated state')
#       end

#       it 'redirects to the post' do
#         note = Note.new(valid_attributes)
#       	note.user = current_user
#       	note.save
#         patch note_url(note), params: { note: new_attributes }
#         note.reload
#         expect(response).to redirect_to(note_url(note))
#       end
#     end

#     context 'with invalid parameters' do
#       it "renders a successful response (i.e. to display the 'edit' template)" do
#         note = Note.create! valid_attributes
#         patch note_url(note), params: { note: invalid_attributes }
#         expect(response).to be_successful
#       end
#     end
#   end

#   describe 'DELETE /destroy' do
#     it 'destroys the requested post' do
#       note = Note.new(valid_attributes)
#       note.user = current_user
#       note.save
#       expect do
#         delete note_url(note)
#       end.to change(Note, :count).by(-1)
#     end

#     it 'redirects to the posts list' do
#       note = Note.new(valid_attributes)
#       note.user = current_user
#       note.save
#       delete note_url(note)
#       expect(response).to redirect_to(notes_url)
#     end
#   end
# end
