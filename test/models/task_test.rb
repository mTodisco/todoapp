require 'test_helper'

class TaskTest < ActiveSupport::TestCase

  test "task can not be saved without name" do
   task = Task.new
   assert !task.save
  end

test "task can be saved with name, deadline and duraton" do
 task = Task.new
 task.name = "Eine Aufgabe"
 task.deadline = Date.today + 7.days
 task.duration = 5.0
 assert task.save
end   

end
