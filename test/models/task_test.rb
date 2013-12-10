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

test "is delayed" do
 task = Task.new
 task.deadline = Date.today - 10.days
 assert task.is_delayed?
end

test "is not delayed" do
 task = Task.new
 task.deadline = Date.today + 10.days
 assert !task.is_delayed?
end

test "is not delayed if deadline is today" do
 task = Task.new
 task.deadline = Date.today
 assert !task.is_delayed?
end

end
