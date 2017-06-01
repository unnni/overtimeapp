FactoryGirl.define do
  factory :user do
  	first_name 'Arjun'
  	last_name 'Parth'
  	email "test@test.com"
  	password "asddfasdf"
  	password_confirmation "asdfasdf"
   end

	
  factory :admin_user, class: "Admin" do
  	first_name 'Admin'
  	last_name 'User'
  	email "admin@user.com"
  	password "asddfasdf"
  	password_confirmation "asdfasdf"
  end
end