require 'rails_helper'

RSpec.describe Grade, type: :model do
  it 'is valid with valid attributes' do
    grade = FactoryGirl.create(:grade)
    puts json: grade
    expect(grade).to be_valid
  end
end
