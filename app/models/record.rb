class Record < ActiveRecord::Base
  belongs_to :user
  belongs_to :route, class_name: 'Route', foreign_key: :route_id
end
