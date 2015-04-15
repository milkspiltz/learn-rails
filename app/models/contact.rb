class Contact < ActiveRecord::Base
  has_no_table

  include ActiveModel::Model
  attr_accessor :name, :string
  attr_accessor :email, :string
  attr_accessor :content, :string
  # NOTE: the above code appears to be working and is from https://github.com/RailsApps/learn-rails/blob/master/app/models/contact.rb
  # the code below was what the book was using w/ rails 4.0.0
  #column :name, :string
  #column :email, :string
  #column :content, :string

  validates_presence_of :name
  validates_presence_of :email
  validates_presence_of :content
  validates_format_of :email,
    :with => /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i
  validates_length_of :content, :maximum => 500

end
