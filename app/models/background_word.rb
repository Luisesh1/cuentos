class BackgroundWord < ActiveRecord::Base
  belongs_to :background
  belongs_to :word
end
