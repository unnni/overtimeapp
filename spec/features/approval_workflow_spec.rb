require 'rails_helper'

describe 'navigate' do
	before do
		@adminuser = FactoryGirl.create(:admin_user)
		login_as(@admin_user, :scope => :user)
	end

	describe 'edit' do	
		before do
			@post = FactoryGirl.create(:post)
		end

		#it 'has a status that can be edited on the form' do
		#	visit edit_post_path(@post)
			#page.choose('post_status_approved', visible: false)
		#	find(:id => 'post_status_approved').choose('Approved')
		#	click_on "Save"
		#	expect(@post.reload.status).to eq('approved')
		#end

		
	end
end