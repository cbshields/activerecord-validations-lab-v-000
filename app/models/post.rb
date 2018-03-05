class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: {minimum: 10}
  validates :long_summary, length {maximum: 9}
  validates :category, inclusion: { in: %w(Fiction Non-fiction)}
end
