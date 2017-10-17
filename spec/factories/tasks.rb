FactoryGirl.define do
  factory :task do
    todo_list nil
    name "MyString"
    completed false
    due "2017-10-17"
  end
end
