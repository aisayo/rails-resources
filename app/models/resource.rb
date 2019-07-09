class Resource < ApplicationRecord
    belongs_to :author, class_name: 'User', optional: true 
    has_many :comments 
    has_many :commentors, through: :comments, source: 'User'

    validates :title, :url, presence: true
    validates :title, :url, uniquness: true

end
