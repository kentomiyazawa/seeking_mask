require 'rails_helper'

describe MasksController do

  describe 'GET #new' do
    it "new.html.erbに遷移すること" do
      get :new
      expect(response).to render_template :new
    end
  end

  describe 'GET #edit' do
    it "@maskに正しい値が入っていること" do
      mask = FactoryBot.create(:mask)
      get :edit, params: { id: mask }
      expect(assigns(:mask)).to eq mask   
    end

    it "edit.html.erbに遷移すること" do
      mask = FactoryBot.create(:mask)
      get :edit, params: { id: mask }
      expect(response).to render_template :edit
    end
  end


end

