require 'rails_helper'

RSpec.describe Comment, type: :model do

  context 'Validation tests' do
    it 'ensures the presence of the description' do
      comment = Comment.new(description: '').save
      expect(comment).to eq(false)
    end
  end
end
