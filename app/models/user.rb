class User < ApplicationRecord
    validates :age, numericality: {greater_than: 18}
    validates :name, presence: true
    validates :name, length: {minimum: 3}
end
