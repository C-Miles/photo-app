# frozen_string_literal: true

class Image < ApplicationRecord
  belongs_to :user
  mount_uploader :picture, PictureUploader
  validate :pictue_size

  def pictue_size
    return unless picture.size > 5.megabytes

    errors.add(:picture, 'should be less than 5MB')
  end
end
