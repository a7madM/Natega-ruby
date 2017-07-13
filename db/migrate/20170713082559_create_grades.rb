class CreateGrades < ActiveRecord::Migration[5.1]
  def change
    create_table :grades do |t|
      t.string :SeatNumber
      t.string :Name
      t.string :School
      t.string :Section
      t.string :DeptName
      t.string :DeptName
      t.string :Arabic1
      t.string :Arabic2
      t.string :English1
      t.string :English2
      t.string :Flanguage2
      t.string :Math1J
      t.string :Math1T
      t.string :Math1
      t.string :History
      t.string :Geography
      t.string :Philosophy
      t.string :Psychology
      t.string :Economie
      t.string :Statistics
      t.string :EconomieAndStatistics
      t.string :Chemistry
      t.string :Biology
      t.string :Geology
      t.string :Math2J
      t.string :Math2T
      t.string :Math2M
      t.string :Math2
      t.string :Physics
      t.string :Religion1
      t.string :Religion2
      t.string :National
      t.string :ArabicHL
      t.string :EnglishHL
      t.string :GeographyHL
      t.string :PhilosophyHL
      t.string :BiologyHL
      t.string :MathHL
      t.string :TotalDegree
      t.string :TotalDegreeAfterHL
      t.string :NoOfFails
      t.string :StudentType
      t.string :StudentCase
      t.string :OrderEgypt
      t.string :OrderDept
      t.string :OrderState
      t.string :OrderSchool
      t.timestamps
    end
  end
end
