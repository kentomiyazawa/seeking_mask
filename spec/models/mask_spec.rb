require 'rails_helper'
describe Mask do
  describe '#create' do
    it "全て入力していれば登録できること" do
      user = FactoryBot.create(:user)
      mask = FactoryBot.build(:mask, user_id: user[:id])
      expect(mask).to be_valid
    end

    it "makerが無いと登録できないこと" do
      user = FactoryBot.create(:user)
      mask = FactoryBot.build(:mask, user_id: user[:id], maker: "")
      mask.valid?
      expect(mask.errors[:maker]).to include("を入力してください")
    end

    it "priceが無いと登録できないこと" do
      user = FactoryBot.create(:user)
      mask = FactoryBot.build(:mask, user_id: user[:id], price: "")
      mask.valid?
      expect(mask.errors[:price]).to include("を入力してください")
    end

    it "stockが無いと登録できないこと" do
      user = FactoryBot.create(:user)
      mask = FactoryBot.build(:mask, user_id: user[:id], stock: "")
      mask.valid?
      expect(mask.errors[:stock]).to include("を入力してください")
    end

    it "sizeが無いと登録できないこと" do
      user = FactoryBot.create(:user)
      mask = FactoryBot.build(:mask, user_id: user[:id], size: "")
      mask.valid?
      expect(mask.errors[:size]).to include("を入力してください")
    end
  end

  describe '#update' do
  it "全て入力していれば登録できること" do
    user = FactoryBot.create(:user)
    mask = FactoryBot.build(:mask, user_id: user[:id])
    expect(mask).to be_valid
  end

  it "makerが無いと登録できないこと" do
    user = FactoryBot.create(:user)
    mask = FactoryBot.build(:mask, user_id: user[:id], maker: "")
    mask.valid?
    expect(mask.errors[:maker]).to include("を入力してください")
  end

  it "priceが無いと登録できないこと" do
    user = FactoryBot.create(:user)
    mask = FactoryBot.build(:mask, user_id: user[:id], price: "")
    mask.valid?
    expect(mask.errors[:price]).to include("を入力してください")
  end

  it "stockが無いと登録できないこと" do
    user = FactoryBot.create(:user)
    mask = FactoryBot.build(:mask, user_id: user[:id], stock: "")
    mask.valid?
    expect(mask.errors[:stock]).to include("を入力してください")
  end

  it "sizeが無いと登録できないこと" do
    user = FactoryBot.create(:user)
    mask = FactoryBot.build(:mask, user_id: user[:id], size: "")
    mask.valid?
    expect(mask.errors[:size]).to include("を入力してください")
  end
end
end