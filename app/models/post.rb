class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: {minimum: 250}
  validates :summary, length: {maximum: 250}
  validates :category, inclusion: { in: %w(Fiction Non-Fiction)}

  title_array = ["Won't Believe", "Secret", "Top [0-9]*", "Guess"]
  
end
