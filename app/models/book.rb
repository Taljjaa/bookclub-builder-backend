class Book < ApplicationRecord
    has_many :bookclub_books
    has_many :bookclubs, through: :bookclub_books
end
