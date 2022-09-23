require 'rails_helper'

RSpec.describe HomeController, type: :controller do
    describe "#index" do

        # 認証済みのユーザーのテスト
        context "as an authenticated user" do
            before do
                @user = FactoryBot.create(:user)
            end
            # 正常にレスポンスを返すこと
            it "responds successfully" do
                sign_in @user
                get :index
                expect(response).to  be_successful
            end
            # 200レスポンスを返すこと
            it "responds successfully" do
                sign_in @user
                get :index
                expect(response).to  have_http_status "200"
            end
        end
    end
end
