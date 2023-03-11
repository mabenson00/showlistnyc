class ShowBand < ApplicationRecord
  belongs_to :show
  belongs_to :band
end
