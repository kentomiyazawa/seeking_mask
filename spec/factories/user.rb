FactoryBot.define do

  factory :user do
    name                  {"ドンキ"}
    address               {"東京都渋谷区"}
    phone                 {"000-0000-0000"}
    email                 {"kkk@kkk"}
    password              {"000000"}
    password_confirmation {"000000"}
  end

end