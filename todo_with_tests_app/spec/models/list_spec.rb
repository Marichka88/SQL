
require 'rails_helper'

RSpec.describe List, type: :model do
  describe '#complete_all_tasks!' do 
    it 'should mark all tasks from the list as complete' do 
      list = List.create(name: "Grocery List")
      Task.create(list_id: list.id, complete: false)
      Task.create(list_id: list.id, complete: false)

      list.complete_all_tasks!

      list.tasks.each do |task|
        expect(task.complete).to eq(true)
      end
    end
  end

describe '#snooze_all_tasks!' do 
    it 'should snooze all tasks on a list' do 
    list = List.create(name: "To do List")
    moment_in_time_1 = Time.now
    moment_in_time_2 = 36.minutes.from_now
    moment_in_time_3 = 2.hours.ago
    Task.create(list_id: list.id, deadline: moment_in_time_1)
    Task.create(list_id: list.id, deadline: moment_in_time_2)
    Task.create(list_id: list.id, deadline: moment_in_time_3)

    list.snooze_all_tasks!

      expect(list.tasks[0].deadline).to eq(moment_in_time_1 + 1.hour)
      expect(list.tasks[1].deadline).to eq(moment_in_time_2 + 1.hour)
      expect(list.tasks[2].deadline).to eq(moment_in_time_3 + 1.hour)

      end
    end 

  describe '#total_duration' do
    it 'should return the added durations together' do 
    list = List.create(name: "tatoos I want to get")
      Task.create(list_id: list.id, duration: 13)
      Task.create(list_id: list.id, duration: 4)
      Task.create(list_id: list.id, duration: 1)   

      expect(list.total_duration).to eq(18)

      end
    end  

  describe '#incomplete_tasks' do
    it 'should return a collection of the tasks on this list' do
    list = List.create(name: "bed maintenance")
    Task.create(list_id: list.id, complete: true)
    Task.create(list_id: list.id, complete: false)
    Task.create(list_id: list.id, complete: false)
    Task.create(list_id: list.id, complete: true)

    expect(list.incomplete_tasks).to eq([task_2, task_3])
    end 
  end

   describe '#favorite_tasks' do
    it 'should return a collection of the tasks on this list' do
    list = List.create(name: "car maintenance")
    Task.create(list_id: list.id, favorite: true)
    Task.create(list_id: list.id, favorite: false)
    Task.create(list_id: list.id, favorite: true)
    Task.create(list_id: list.id, favorite: false)

    expect(list.favorite_tasks).to match_array([task_1, task_3])

    expect(list.favorite.count).to eq(2)

    list.favorite_tasks.each do |task|
      expect(task.favorite). to eq(true)

      end 
    end 
  end 
end
