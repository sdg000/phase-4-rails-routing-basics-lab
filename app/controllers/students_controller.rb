class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    # sort in reverse order
    def grades
        grades = Student.all.sort_by { |item| -item.grade}
        render json: grades
    end

    def highest_grade
        highest_grade = Student.all.maximum(:grade)
        student = Student.find_by(grade: highest_grade)
        render json: student
    end
end
