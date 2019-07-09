class User < ApplicationRecord
    
    has_secure_password

    has_many :authored_resources, class_name: 'Resource', foreign_key: 'author_id'
    has_many :comments
    has_many :commented_resources, through: :comments, source: 'resource'

    validates :username, :email, presence: true 
    validates :username, :email, uniqueness: true 

end
