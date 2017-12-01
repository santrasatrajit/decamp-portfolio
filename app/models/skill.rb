class Skill < ApplicationRecord
  validates_presesnce_of :title, :percent_utilized
end
