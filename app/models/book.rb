class Book < ApplicationRecord
	has_many :book_comments
	has_many :favorites
	belongs_to :user, optional: true
	#バリデーションは該当するモデルに設定する。エラーにする条件を設定できる。
	#presence trueは空欄の場合を意味する。
	validates :title, presence: true
	validates :body, presence: true, length: {maximum: 200}
end
