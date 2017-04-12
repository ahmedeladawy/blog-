class Post < ApplicationRecord
  has_many :comments, dependent: :destroy

  validates(:title, {presence: {
                     message: 'Must be present!'
    }})
end
