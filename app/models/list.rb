class List < ApplicationRecord
  belongs_to :user

  has_many :comments, dependent: :destroy
  has_many :items, inverse_of: :list, dependent: :destroy
  has_many :likes, dependent: :destroy

  accepts_nested_attributes_for :items,
    reject_if: proc { |params| params['body'].blank? },
    allow_destroy: true

  validates :title, presence: true
  validates :user_id, presence: true

  validates_associated :items
  validates_associated :comments
end
