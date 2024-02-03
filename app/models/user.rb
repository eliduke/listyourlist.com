class User < ApplicationRecord
  has_many :lists, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  validates :username,
    presence: true,
    format: {
      with: /\A[\w\.]+\z/,
      message: "only allows letters, numbers, underscores, and periods"
    }

  validates :email,
    presence: true,
    format: { with: /[\S]+\@[\S]+\.[\S]+/ }

  validates :url,
    format: {
      with: /\A(http|https):\/\/[\S]+\.[\S]+\z/,
      message: "is invalid. Make sure you include 'http://' or 'https://' at the beginning.",
      allow_blank: true
    }

  validates_associated :lists
  validates_associated :comments
end
