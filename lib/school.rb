# code here!
class School 
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
        roster[grade] ||= []
        roster[grade] << student
    end

    def grade(grade)
        roster.detect do |x, y|
            if x == grade
                return y
            end
        end
    end

    def sort
        new_sort = {}
        roster.each do |x, y|
            new_sort [x] = y.sort 
        end
        new_sort
    end
end



