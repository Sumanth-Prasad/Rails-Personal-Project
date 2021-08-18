require 'rails_helper'

RSpec.describe Note, type: :model do
  current_user = User.first_or_create!(email: 'opalbai12@gmail.com', password: 'passpass12345', password_confirmation: 'passpass12345')
  current_category = Category.first_or_create!(name: 'Business')
  it 'has a title' do
    note = Note.new(
      title: '',
      content: 'a valid content',
      user: current_user,
      category: current_category
      )

    expect(note).to_not be_valid
    note.title = 'Has a title'
    expect(note).to be_valid
  end

  it 'has a title length between 3 and 25' do
    note = Note.new(
      title: 'Hi',
      content: 'a valid content',
      user: current_user,
      category: current_category
      )

    expect(note).to_not be_valid
    note.title = 'Has a title 25 chars long'
    expect(note).to be_valid
    note.title = 'Has title of 25 chars long'
    expect(note).to_not be_valid
  end

  it 'has a content' do
    note = Note.new(
      title: 'A valid title',
      content: '',
      user: current_user,
      category: current_category
      )

    expect(note).to_not be_valid
    note.content = 'Has a content'
    expect(note).to be_valid
  end

  it 'has a content length of minimum: 2' do
    note = Note.new(
      title: 'A valid title',
      content: '',
      user: current_user,
      category: current_category
      )

    expect(note).to_not be_valid
    note.content = 'Has a valid content'
    expect(note).to be_valid
    note.content = 'Hi'
    expect(note).to be_valid
  end
end