class Link < ActiveRecord::Base
	acts_as_votable
	belongs_to :user
	has_many :comments
    
    
    YT_LINK_FORMAT = /\A.\z(youtu.be\/|v\/|u\/\w\/|embed\/|watch\?v=|\&v=)([^#\&\?]*).*/i
        
validates :url, presence: true, format: YT_LINK_FORMAT
  
end
