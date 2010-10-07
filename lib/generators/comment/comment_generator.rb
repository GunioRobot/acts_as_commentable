require 'rails/generators/migration'
 
module ActsAsCommentable
  class CommentGenerator < Rails::Generators::Base
    include Rails::Generators::Migration                 
    
    desc "Generates migration for Comment model" 

    def self.source_root
      File.join File.dirname(__FILE__), 'templates'
    end

    def self.next_migration_number(path)
      Time.now.utc.strftime("%Y%m%d%H%M%S")
    end

    def create_migration_file
      migration_template 'migration.rb', 'db/migrate/acts_as_commentable_migration'
    end

    # def create_model_file
    #   template "comment.rb", "app/models/comment.rb"
    # end  
  end
end
