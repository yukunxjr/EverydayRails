require 'rails_helper'

RSpec.describe TasksController, type: :controller do
    before do
        @user = FactoryBot.create(:user)
        @project = FactoryBot.create(:project, owner: @user)
        @task = @project.tasks.create!(name: "Test task")
    end

    describe "show" do
        # JSON 形式でレスポンスを返すこと
        it "responds with JSON formatted output" do
            sign_in @user
            get :show,format: :json,params: { project_id: @project.id, id: @task.id }
            expect(response.content_type).to include "application/json"
        end
    end

    describe "create" do
        # JSON 形式でレスポンスを返すこと
        it "responds with JSON formatted output" do
            new_task = { name: "New Task" }
            sign_in @user
            post :create,format: :json,params: { project_id: @project.id, task: new_task }
            expect(response.content_type).to include "application/json"
        end
        # 新しいタスクをプロジェクトに追加すること
        it "adds a new task to the project" do
            new_task = { name: "New task" }
            sign_in @user
            expect{
                post :create, format: :json,params: { project_id: @project.id, task: new_task }
            }.to change(@project.tasks, :count).by(1)
        end
    end
end
