require 'active_record'

module ActsAsCommentable
  module Commentable
    def self.included(model_class)
      model_class.extend SingletonMethods
    end

    module SingletonMethods
      def acts_as_commentable(options={})
        has_many :comments, { :as => :commentable, :dependent => :destroy }.merge(options)
        include ActsAsCommentable::Commentable::InstanceMethods
        extend ActsAsCommentable::Commentable::ClassMethods
      end
    end

    module ClassMethods # TODO
    end

    module InstanceMethods # TODO
    end
  end
end

ActiveRecord::Base.send(:include, ActsAsCommentable::Commentable)
