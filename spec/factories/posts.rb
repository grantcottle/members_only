FactoryBot.define do
 factory :post do
   sequence(:body) { |n| "Secret #{n}" }

   factory :public_post do
     privacy {:public_access}
   end

   factory :private_post do
     privacy { :private_access }
   end
 end 
end
