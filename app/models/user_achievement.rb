class UserAchievement < ActiveRecord::Base
  belongs_to :user
  belongs_to :achievement, class_name: 'Achievement', foreign_key: :achievement_id
end
