class GradesController < ApplicationController
  require 'uri'
  require 'net/http'
  require 'pp'
  require 'json'

  def index
    grades = Grade.all.order_degree
    render json: { count: grades.length, data: grades }, status: :ok
  end

  def show
    grade = Grade.find_by(SeatNumber: params[:id])
    render json: { data: grade }, status: :ok
  end

  def top
    adapy = Grade.adapy.order_degree.limit(5).to_a
    math = Grade.math.order_degree.limit(5).to_a
    bio = Grade.bio.order_degree.limit(5).to_a
    
    render json: { }, status: :ok
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
end
