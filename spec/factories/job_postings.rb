# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :job_posting do
    user nil
    company nil
    title "MyString"
    location "MyString"
    description "MyString"
  end
end
