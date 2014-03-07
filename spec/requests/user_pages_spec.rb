require 'spec_helper'

describe "User pages" do 
	describe "signup page" do
		before {visit signup_path}

		it { should have_selector('h1',	content: 'Sign up')}
		it { should have_selector('title', content: full_title('Sign up'))}
	end


end