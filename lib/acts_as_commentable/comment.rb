module ActsAsCommentable
  module Comment
    def self.included(base)  
      base.class_eval <<-END
        belongs_to :commentable, :polymorphic => true
      END
      base.extend ClassMethods
    end
    
    module ClassMethods # TODO
    end
  end
end
