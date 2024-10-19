class Chore < ApplicationRecord
  has_many :completions, dependent: :destroy
  validates :name, presence: true, uniqueness: true
end
