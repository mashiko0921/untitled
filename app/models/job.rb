class Job < ActiveRecord::Base
  has_attached_file :csv
  validates_attachment_presence :csv
  validates_attachment_content_type :csv, :content_type => ['text/csv','text/comma-separated-values','application/csv','text/plain']
end