class Follow < ActiveRecord::Base
  belongs_to :volunteer
  belongs_to :organization, :counter_cache => true 
end
