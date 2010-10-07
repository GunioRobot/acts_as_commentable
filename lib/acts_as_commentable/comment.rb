module ActsAsCommentable
  module Comment
    def self.included(model_class)  
      model_class.belongs_to :commentable, :polymorphic => true
      model_class.extend ClassMethods
    end
    
    module ClassMethods # TODO
    end
  end
end
