class Grade < ApplicationRecord
  scope :max, -> { where('OrderSchool >= 1') }

  scope :bio, -> { where('Biology > 0') }
  scope :math, -> { where('Math2 > 0') }
  scope :adapy, -> { where('History > 0') }

  scope :failed, -> { where('NoOfFails >= 1') }

  scope :boys, -> { where('SeatNumber < 427503') }
  scope :girls, -> { where('SeatNumber > 427502') }

  scope :order_school, -> { order('OrderSchool ASC') }
  scope :order_degree, -> { order('TotalDegree DESC') }

  def as_json(options = {})
    super(options.merge(only: %i[Name SeatNumber TotalDegree OrderSchool
                                 Biology Math2 History]))
  end
end
