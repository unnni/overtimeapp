FactoryGirl.define do

  sequence :email do |n|
    "test#{n}@example.com"
  end

  factory :user do
  	first_name 'Arjun'
  	last_name 'Parth'
  	email {generate :email}
    password "asdfasdf"
  	password_confirmation "asdfasdf"

   end


	
  factory :admin_user, class: "Admin" do
  	first_name 'Admin'
  	last_name 'User'
  	email "admin@user.com"
  	password "asdfasdf"
  	password_confirmation "asdfasdf"
  end
end