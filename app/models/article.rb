class Article < ActiveRecord::Base
  belongs_to :author, class_name: "User"
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  settings do
      mappings dynamic: false do
        indexes :title, type: :text, analyzer: :english
        indexes :body, type: :text, analyzer: :english
        indexes :tags, type: :text, analyzer: :english
      end
    end
end
