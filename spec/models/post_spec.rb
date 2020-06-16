require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:body) }
    it { should belong_to(:user) }
    it { should validate_presence_of(:user) }
  end
end
