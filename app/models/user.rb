class User < ApplicationRecord
  has_secure_password

  # comes with some basic validations

  # validate minimum length
  # validations

  has_many :pictures
end
