class User < ApplicationRecord
  before_validation :normalize_name, on: [ :create, :update ]
  # after_initialize do |user|
  #   puts "You have initialized an object!"
  # end

  # after_find do |user|
  #   puts "You have found an object!"
  # end

  private

  def normalize_name
    self.name = name.downcase.titleize
    # self.name = name.upcase
  end
end
