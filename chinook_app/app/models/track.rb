class Track < ActiveRecord::Base
  SHORT = 180000
  LONG = 360000

  scope :short, -> { where('milliseconds <= ?', SHORT) }
  scope :long, -> { where('milliseconds >= ?', LONG) }
  scope :medium, -> { where('milliseconds > ? and milliseconds < ?', SHORT, LONG) }
  scope :shorter_than_or_equal_to, -> (milliseconds) { where('milliseconds <= ?', milliseconds) }
  scope :starts_wtih, -> (first_char) { where('name ILIKE ?', "#{ first_char}%") }

validates :name, presence: true

validate :name_must_be_titleized

validates :milliseconds, presence: true,
			                   numericality: {greater_than: 0}

validates :unit_price, presence: true,
                       numericality: {greater_than_or_equal_to: 0.0}

private

 def name_must_be_titleized
   first_char = name[0]
   first_char_is_not_upcased = (first_char != first_char.upcase)

   if first_char_is_not_upcased
     errors.add(:name, 'This is not a proper title')
 end
 end

end
