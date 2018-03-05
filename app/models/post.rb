class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: {minimum: 250}
  validates :summary, length: {maximum: 250}
  validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
  validate :clickbait?


  def clickbait?
    title_array = ["Won't Believe", "Secret", "Top [0-9]*", "Guess"]
    binding.pry
    if title_array.include?(title)
      binding.pry
      errors.add(:title, "must be clickbait")
    end
  end
end
