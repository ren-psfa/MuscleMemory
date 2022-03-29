class TrainingRecord < ApplicationRecord
  belongs_to :user
  has_one :training_menu
  validates :date, presence: true
  validates :data, presence: true
end
