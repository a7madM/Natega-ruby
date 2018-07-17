class Grade < ApplicationRecord
  
  scope :bio, -> { where('Biology > 0') }
  scope :math, -> { where('Math2 > 0') }
  scope :adapy, -> { where('History > 0') }

  scope :failed, -> { where('NoOfFails >= 1') }

  scope :girls, -> { where(School:"أجهـور الكبرى الثانويه بنات") }
  scope :boys, -> { where(School: "اجهور الكبرى الثانويه بنين") }

  
  scope :uncategorized, -> { where('Biology < 0 and Math2 < 0 and History < 0') }
  scope :order_school, -> { order('OrderSchool ASC') }
  scope :order_degree, -> { order('TotalDegree DESC') }

  def as_json(options = {})
    super(options.merge(only: %i[Name SeatNumber TotalDegree OrderSchool
                                 Biology Math2 History School]))
  end
end
