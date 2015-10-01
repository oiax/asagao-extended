class MemberConnection < ActiveRecord::Base
  belongs_to :follower, class_name: 'Member', foreign_key: 'follower_id'
  belongs_to :followee, class_name: 'Member', foreign_key: 'followee_id'
end
