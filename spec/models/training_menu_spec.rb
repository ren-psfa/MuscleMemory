require 'rails_helper'

RSpec.describe TrainingMenu, type: :model do
  context "spot, menu, content に値が入ってる時" do
    it "training_menu は作成される" do
      menu = build(:training_menu)
      expect(menu).to be_valid
    end
  end

  context "spot に値が入っていない時" do
    it "データは作られない" do
      menu = build(:training_menu, spot: nil)
      expect(menu).to be_invalid
    end
  end

  context "menu に値が入っていない時" do
    it "データは作られない" do
      menu = build(:training_menu, menu: nil)
      expect(menu).to be_invalid
    end
  end

  context "content に値が入っていない時" do
    it "データは作られない" do
      menu = build(:training_menu, content: nil)
      expect(menu).to be_invalid
    end
  end
end
