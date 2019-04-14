class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :post_images, dependent: :destroy#PostImageモデルと1:Nの関係
  has_many :post_comments, dependent: :destroy#PostCommentモデルと1:Nの関係
  has_many :favorites, dependent: :destroy#favoriteモデルと1:Nの関係

end
