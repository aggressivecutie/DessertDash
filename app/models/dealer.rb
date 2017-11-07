class Dealer < ApplicationRecord
  include ImageUploader::Attachment.new(:image) # adds an `image` virtual attribute

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end