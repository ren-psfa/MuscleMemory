require 'rails_helper'

RSpec.describe TrainingRecord, type: :model do
  context "date, data に値が入っている時" do
    fit "training_record は作られる" do
      record = build(:training_record)
      binding.pry
      expect(record).to be_valid
    end
  end

  context "date に値が入っていない時" do
    it "データは作られない" do
      record = build(:training_record, date: nil)
      expect(record).to be_invalid
    end
  end

  context "data に値が入っていない時" do
    it "データは作られない" do
      record = build(:training_record, date: nil)
      expect(record).to be_invalid
    end
  end
end
