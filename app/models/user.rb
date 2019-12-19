class User < ApplicationRecord

validates :user_name, uniqueness: {message: "This name is already taken by an other user"}
validates :password, presence: {message: 'please provide a password'} ,length: {minimum:4, too_short: 'the password is too short'}
validates :email, presence: true
end
