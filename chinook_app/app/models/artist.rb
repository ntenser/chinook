class Artist < ActiveRecord::Base
  validats :name, presense: true
end
