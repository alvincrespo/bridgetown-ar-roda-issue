# == Schema Information
#
# Table name: signups
#
#  id         :bigint           not null, primary key
#  email      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Signup < ApplicationRecord
  validates :email, presence: true, uniqueness: { case_insensitive: true }
end
