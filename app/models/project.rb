class Project < ApplicationRecord
  acts_as_paranoid
  validates :title,
    presence: true,
    uniqueness: {
                  message: 'project name must be unique'
                }
  has_many :items, dependent: :destroy
end
