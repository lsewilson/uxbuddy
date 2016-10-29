class Test < ApplicationRecord
  extend FriendlyId
  friendly_id :id, use: :slugged

  has_one :user
  has_one :test_type
  has_and_belongs_to_many :questions, join_table: "tests_questions"
  has_many :answers, through: :questions

  # validates :user, presence: true
  validates :test_url, presence: true
  validates :question_ids, presence: true
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :test_url, format: { with: URI.regexp }, if: 'test_url.present?'

end
