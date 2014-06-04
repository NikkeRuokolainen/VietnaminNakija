require 'spec_helper' 

describe User do
	
before do
	@user = FactoryGirl.create(:user)
end


	subject { @user }

	it { should respond_to(:name) }
	it { should respond_to(:email) }
	it { should respond_to(:password) }
	it { should respond_to(:password_confirmation) }
	it { should respond_to(:admin) }

	describe "with no email" do 
		before { @user.email = "" }
		it { should be_invalid }
	end

	describe "with invalid email" do
		before { @user.email = "fdsafdas.fi" }
		it { should be_invalid }
	end

	describe "with no name" do
		before { @user.name = ""}
		it {should be_invalid }
	end

	describe "with invalid password" do

	end
end