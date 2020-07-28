require 'rails_helper'

RSpec.describe Chef, type: :model do

  context 'validation tests' do 
    it 'ensures presence of name' do
      chef = Chef.new(name: '', email: 'www.example.com').save
      expect(chef).to eq(false)
    end

    it 'ensures presence of email' do
      chef = Chef.new(name: 'Test', email: '')
    end
  end
end
