class Link < ActiveRecord::Base
	acts_as_votable
	belongs_to :user
	has_many :comments
     
YT_LINK_FORMAT = /\A(?:https?:\/\/)?(?:www\.)?(?:youtu\.be\/|youtube\.com\/(?:embed\/|v\/|watch\?v=|watch\?.+&v=))((\w|-){11})(?:\S+)?\z/;
  
validates :url, presence: true, format: YT_LINK_FORMAT
  
end
