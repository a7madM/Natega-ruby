class GradesController < ApplicationController
  require 'uri'
  require 'net/http'
  require 'pp'
  require 'json'

  def index
    grades = Grade.all
    render json: { count: grades.length, data: grades }, status: :ok
  end

  def top
    grades = Grade.max.where('SeatNumber > 427330').limit(10)
    render json: { count: grades.length, data: grades }, status: :ok
  end

  def bio
    grades = Grade.bio.order_degree
    render json: { count: grades.length, data: grades }, status: :ok
  end

  def math
    grades = Grade.math
    render json: { count: grades.length, data: grades }, status: :ok
  end

  def adapy
    grades = Grade.adapy
    render json: { count: grades.length, data: grades }, status: :ok
  end

  def failed
    grades = Grade.failed
    render json: { count: grades.length, data: grades }, status: :ok
  end

  def boys
    grades = Grade.boys
    render json: { count: grades.length, data: grades }, statuse: :ok
  end

  def girls
    grades = Grade.girls.order_degree.order_school

    render json: { count: grades.length, data: grades }, statuse: :ok
  end

  def girlsfailed
    grades = Grade.failed.girls.order_degree.order_school

    render json: { count: grades.length, data: grades }, statuse: :ok
  end

  def boysfailed
    grades = Grade.failed.boys.order_degree.order_school
    render json: { count: grades.length, data: grades }, statuse: :ok
  end

  def pull_data
    pull_grades_data
    render json: { data: data }, start: :ok
  end

  private

  def pull_grades_data(seat_number = 427_360)
    data = []
    (seat_number..seat_number + count).each do |seat|
      url = URI('http://natega.youm7.com/Home/GetResultStage1/')
      response = Net::HTTP.post_form(url, 'SeatNumber' => seat)
      record = JSON.parse(response.read_body)
      record = Hash[*record]
      grade = Grade.new(record)
      grade.save
      data << grade
    end
  end
end
