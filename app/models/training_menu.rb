class TrainingMenu < ApplicationRecord
  belongs_to :training_record
  validates :spot, presence: true
  validates :menu, presence: true
  validates :content, presence: true
end
