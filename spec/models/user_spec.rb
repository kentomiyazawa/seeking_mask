require 'rails_helper'
describe User do
  describe '#create' do
    it "全て入力していれば登録できること" do
      user = FactoryBot.build(:user)
      expect(user).to be_valid
    end

    it "nameが無いと登録できないこと" do
      user = FactoryBot.build(:user, name: "")
      user.valid?
      expect(user.errors[:name]).to include("を入力してください")
    end

    it "addressが無いと登録できないこと" do
      user = FactoryBot.build(:user, address: "")
      user.valid?
      expect(user.errors[:address]).to include("を入力してください")
    end

    it "phoneが無いと登録できないこと" do
      user = FactoryBot.build(:user, phone: "")
      user.valid?
      expect(user.errors[:phone]).to include("を入力してください")
    end

    it "passwordが無いと登録できないこと" do
      user = FactoryBot.build(:user, password: "")
      user.valid?
      expect(user.errors[:password]).to include("を入力してください")
    end

    it " passwordが6文字以上であれば登録できること " do
      user = FactoryBot.build(:user, password: "000000", password_confirmation: "000000")
      expect(user).to be_valid
    end

    it " passwordが5文字以下であれば登録できないこと " do
      user = FactoryBot.build(:user, password: "00000", password_confirmation: "00000")
      user.valid?
      expect(user.errors[:password]).to include("は6文字以上で入力してください")
    end

    it "重複したnameは登録できないこと" do
      user = FactoryBot.create(:user)
      another_user = FactoryBot.build(:user, name: "ドンキ", address: "東京都新宿区", phone: "111-1111-1111", email: "mmm@mmm")
      another_user.valid?
      expect(another_user.errors[:name]).to include("はすでに存在します")
    end

    it "重複したaddressは登録できないこと" do
      user = FactoryBot.create(:user)
      another_user = FactoryBot.build(:user, name: "ツルハ", address: "東京都渋谷区", phone: "111-1111-1111", email: "mmm@mmm")
      another_user.valid?
      expect(another_user.errors[:address]).to include("はすでに存在します")
    end

    it "重複したphoneは登録できないこと" do
      user = FactoryBot.create(:user)
      another_user = FactoryBot.build(:user, name: "ツルハ", address: "東京都新宿区", phone: "000-0000-0000", email: "mmm@mmm")
      another_user.valid?
      expect(another_user.errors[:phone]).to include("はすでに存在します")
    end


  end
end