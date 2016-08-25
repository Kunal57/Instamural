require "rails_helper"

describe User do
  let(:user) {User.new(first_name: 'john', last_name: 'last_name' email: 'john@john.com', phone: '555-555-5555', phone_approvel: true, password: 'helloworld')}
  describe "create a new user" do
    it 'has a username' do
      expect(user.username).to eq('johndoe')
    end

    it 'has a email' do
      expect(user.email).to eq('john@john.com')
    end

    it 'has a password' do
      expect(user.password).to_not eq nil
    end
  end
end
