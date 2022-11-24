class StudentsController < ApplicationController
    def index 
        students = Student.all 
        render json: students
    end

    def grades 
        grade = Student.all
        graded = grade.order(grade: :desc)
        render json: graded
    end

    def highest_grade
        grade = Student.all
        graded = grade.order(grade: :desc).first
        render json: graded
    end
end
