class Item < ApplicationRecord
  # itemは1人のユーザーに所属するそのため単数系にする！
  belongs_to :user
end
