require "rails_helper"

describe User do
  let(:user) {User.new(first_name: 'john', last_name: 'doe', email: 'john@john.com', phone: '555-555-5555', phone_approval: true, password: 'helloworld')}
  describe "create a new user" do
    it 'has a first_name' do
      expect(user.first_name).to eq('john')
    end

    it 'has a last_name' do
      expect(user.last_name).to eq('doe')
    end

    it 'has a email' do
      expect(user.email).to eq('john@john.com')
    end

    it 'has a password' do
      expect(user.password).to_not eq nil
    end
  end
end
