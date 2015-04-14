FactoryGirl.define do
	factory :comment do
		message "nom nom nom"
		rating "5_star"
		association :user
		association :place
	end	

	factory :user do
		sequence :email do |n|
			"myemail#{n}@gmail.com"
		end
		password "password"		
	end

	factory :place do
		name "My Bakery"
		description "Tasty"
		address "1 Cupcake Lane, Seattle, WA 12345"
		latitude(42.3631519)
		longitude(-71.056098)
		association :user
		
	end
end