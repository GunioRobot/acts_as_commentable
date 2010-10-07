class Comment < ActiveRecord::Base
  include ActsAsCommentable::Comment

  default_scope :order => 'created_at DESC'
end
