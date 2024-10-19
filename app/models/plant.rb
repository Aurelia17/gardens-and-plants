class Plant < ApplicationRecord
  belongs_to :garden
  has_many :completions, dependent: :destroy
  has_many :chores, through: :completions
  validates :name, presence: true
end
