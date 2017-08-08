class User < ApplicationRecord
  include SearchCop

  search_scope :search do
    attributes :id, :name
    options :name, :type => :fulltext
  end

end
