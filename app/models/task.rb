class Task < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 750 }
  
  PRIORITIES = ['Low', 'Medium', 'High']
end
