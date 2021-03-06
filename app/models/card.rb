# == Schema Information
#
# Table name: cards
#
#  id          :integer          not null, primary key
#  title       :string           not null
#  description :text
#  due_date    :datetime
#  list_id     :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Card < ApplicationRecord
  validates :title, :list_id, presence: true

  belongs_to :list
  has_many :comments

  has_many :authors, -> { distinct }, through: :comments
end
