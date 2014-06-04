require 'spec_helper'

describe Post do
	before do	
		@post = FactoryGirl.create(:post)
	end

	subject { @post }
	
	it { should respond_to(:content) }
	it { should respond_to(:title) }

	describe "with no content" do
		before { @post.content = "" }
		it { should be_invalid }
	end

	describe "with no title" do 
		before { @post.title = "" }
		it { should be_invalid }
	end

end