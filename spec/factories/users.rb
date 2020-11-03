FactoryBot.define do

  factory :user do
    family_name               {"田中"}
    first_name                {"太郎"}
    gender                    {"男性"}
    age                       {"30"}
    email                     {"aaa@aaaa"}
    password                  {"aaaa1111"}
    password_confirmation     {"aaaa1111"}
  end

end