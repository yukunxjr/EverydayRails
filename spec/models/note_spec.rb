# require 'rails_helper'

# RSpec.describe Note, type: :model do
#   let(:user) { FactoryBot.create(:user) }
#   let(:project) { FactoryBot.create(:project, owner: user) }
  
#   # ユーザー、プロジェクト、メッセージがあれば有効な状態であること
#   it "is valid with a user, project, and message" do
#     note = Note.new(
#       user: user,
#       project: project,
#       message: "This is a sample note.",
#     )
#     note.valid?
#     expect(note).to be_valid 
#   end

#   # メッセージがなければ無効な状態であること
#   it "is invalid without a message" do
#     note = Note.new(message: nil)
#     note.valid?
#     expect(note.errors[:message]).to include("can't be blank")
#   end

  # 文字列に一致するメッセージを検索する
  # describe "search message for a term" do
  #   before do
  #     let!(:note1){
  #       FactoryBot.create(
  #       :note,
  #       project: project,
  #       user: user,
  #       message: "This is the first note.",
  #       )
  #     }
  #     let!(:note2){
  #       FactoryBot.create(
  #       :note,
  #       project: project,
  #       user: user,
  #       message: "This is the second note.",
  #       )
  #     }
  #     let!(:note3){
  #       FactoryBot.create(
  #       :note,
  #       project: project,
  #       user: user,
  #       message: "First, prethat the oven.",
  #       )
  #     }

      # @note2 = project.notes.create(
      #   message: "This is the second note.",
      #   user: user,
      # )
      # @note3 = project.notes.create(
      #   message: "First, prethat the oven.",
      #   user: user,
      # )
    # end

  # 一致するデータが見つかるとき
#     context "when a match is found" do
#       # 検索文字列に一致するメモを返すこと
#       it "returns notes that match the search term" do 
#         expect(Note.search("first")).to include(@note1,@note3)
#         expect(Note.search("first")).to_not include(@note2)
#       end
#     end
#     # 一致するデータが1件も見つからないとき
#     context "when no match is found" do
#       # 検索結果が1件も見つからなければ空のコレクションを返すこと
#       it "returns an empty collection when no results are found" do
#         expect(Note.search("message")).to be_empty
#         expect(Note.count).to eq 3
#       end
#     end
#   end
# end
