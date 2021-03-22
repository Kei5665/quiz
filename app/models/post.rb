class Post < ApplicationRecord
    validates :answer,{presence: true}
end
