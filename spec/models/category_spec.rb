require 'rails_helper'

RSpec.describe Category, type: :model do
  it 'has a name' do
    category = Category.new(
      name: ''
      )

    expect(category).to_not be_valid
    category.name = 'Has a name'
    expect(category).to be_valid
  end

  it 'has a name length between 3 and 20' do
    category = Category.new(
      name: 'Hi'
      )

    expect(category).to_not be_valid
    category.name = 'Hello'
    expect(category).to be_valid
    category.name = 'Name of 21 chars long'
    expect(category).to_not be_valid
  end
end