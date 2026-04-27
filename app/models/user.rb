class User < ApplicationRecord
  has_one :profile, dependent: :destroy


  # Creating profile
  after_create :create_profile


  private
  def create_profile
    Profile.create(user_id: self.id)
  end
end
