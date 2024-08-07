# > student = Student.new("Sophocles", 1)
# => #<Student:0x007fa2e9acd738>

# student.name
# => "Sophocles"

# student.mod
# => "1"

# student.skills
# => []

# student.say_mod
# => "I'm in Mod 1"

# student.learn("testing")

# student.skills
# => ["testing"]

# student.learn("mocks")

# student.skills
# => ["testing", "mocks"]

# student.promote

# student.say_mod
# => "I'm in Mod 2"

require 'rspec'
require './lib/student'

describe Student do
    describe '#initialize' do
        it 'is an instance of student' do
            # write the code to initialize a new student object
            student = Student.new('Sophocles', 1)
            # add expect statement
            expect(student).to be_a Student
        end

        # test it has a name
        it 'has a name' do
            student = Student.new('Sophocles', 1)
            expect(student.name).to eq 'Sophocles'
        end

        it 'has a mod' do
            student = Student.new('Sophocles', 1)
            expect(student.mod).to eq 1
        end 

        it 'starts with no skills' do
            student = Student.new('Sophocles', 1)
            expect(student.skills).to eq []
        end 
    end

    describe '#say_mod' do
        it 'prints what mod student is in' do
            student = Student.new('Sophocles', 1)
            expect(student.say_mod).to eq "I'm in Mod 1"
        end 
    end 

    describe '#learn' do
        it 'adds skill to a student' do
            student = Student.new('Sophocles', 1)
            student.learn('testing')
            expect(student.skills).to eq ["testing"]
            student.learn('mocks')
            expect(student.skills).to eq ["testing", "mocks"]
        end 
    end 

    describe '#promote' do
        it 'promotes a student to next mod' do
            student = Student.new('Sophocles', 1)
            student.promote
            expect(student.say_mod).to eq "I'm in Mod 2"
        end 
    end     
end 