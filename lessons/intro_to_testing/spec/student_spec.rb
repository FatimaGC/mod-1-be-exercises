# Add the 2 requires you will need here
require 'rspec'
require './lib/student'

describe Student do
  describe '#initialize' do
    it 'is an instance of student' do
      # write the code to initialize a new student object
      student = Student.new('Penelope')
      # add expect statement
      expect(student).to be_a Student
    end

    # test it has a name
    it 'has a name' do
      student = Student.new('Penelope')
      expect(student.name).to eq 'Penelope'
    end

    # test it has cookies
    it 'has cookies' do
    student = Student.new('Penelope')
    expect(student.cookies).to eq []
    end 
  end

    # test it can add cookies
  describe '#addcookie' do
    it 'adds cookies to cookies array' do
    student = Student.new('Penelope')
    student.add_cookie('Chocolate Chip')

    expect(student.cookies).to eq ['Chocolate Chip'] 
    end
  end
end 
