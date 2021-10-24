# frozen_string_literal: true

class User < ApplicationRecord
  validates_presence_of :name, message: "Name can't blank."
  validates_presence_of :mobile, message: "mobile number can't blank."
end
