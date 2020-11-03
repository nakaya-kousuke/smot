require 'rails_helper'

describe Store do
  describe '#create' do

    it "store_nameが空では登録できないこと" do
      store = build(:store, store_name: nil)
      store.valid?
      expect(store.errors[:store_name]).to include("can't be blank")
    end

    it "postal_codeが空では登録できないこと" do
      store = build(:store, postal_code: nil)
      store.valid?
      expect(store.errors[:postal_code]).to include("can't be blank")
    end

    it "prefecturesが空では登録できないこと" do
      store = build(:store, prefectures: nil)
      store.valid?
      expect(store.errors[:prefectures]).to include("can't be blank")
    end

    it "ctiyが空では登録できないこと" do
      store = build(:store, ctiy: nil)
      store.valid?
      expect(store.errors[:ctiy]).to include("can't be blank")
    end

    it "block_numberがない場合は登録できないこと" do
      store = build(:store, block_number: nil)
      store.valid?
      expect(store.errors[:block_number]).to include("can't be blank")
    end

    it "phone_numberがない場合は登録できないこと" do
      store = build(:store, phone_number: nil)
      store.valid?
      expect(store.errors[:phone_number]).to include("can't be blank")
    end

    it "open_timeがない場合は登録できないこと" do
      store = build(:store, open_time: nil)
      store.valid?
      expect(store.errors[:open_time]).to include("can't be blank")
    end

    it "close_timeがない場合は登録できないこと" do
      store = build(:store, close_time: nil)
      store.valid?
      expect(store.errors[:close_time]).to include("can't be blank")
    end

    it "holidayがない場合は登録できないこと" do
      store = build(:store, holiday: nil)
      store.valid?
      expect(store.errors[:holiday]).to include("can't be blank")
    end

    it "smoking_environmentがない場合は登録できないこと" do
      store = build(:store, smoking_environment: nil)
      store.valid?
      expect(store.errors[:smoking_environment]).to include("can't be blank")
    end

    it "website_urlがない場合は登録できないこと" do
      store = build(:store, website_url: nil)
      store.valid?
      expect(store.errors[:website_url]).to include("can't be blank")
    end

  end
end