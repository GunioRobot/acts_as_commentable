module ActsAsCommentable
  module Comment
    def self.included(model_class)
      model_class.class_eval <<-RUBY
        belongs_to :commentable, :polymorphic => true
        validates_presence_of :content
      RUBY
      model_class.extend ClassMethods
    end

    module ClassMethods # TODO
    end
  end
end
