class Controller
  def self.add(task_desc)
    task = Task.create(description: task_desc)
    puts "task #{task.id} has been created."
  end

  def self.delete(id)
    task = Task.find(id).destroy
    puts "task #{task.id} has been deleted."
  end

  def self.list
    Task.all.each do |t|
    puts "#{t.id}. #{t.description} Status:#{t.status}"
    end
  end

  def self.completed(id)
  #   task = Task.find_by(id: id)
  #   task.update(status: 1)
  #   puts "#{task.id} has completed"
  # end



    taskplete = Task.find(id).update(status: 0)
    puts "here #{id} this is completed"
  end
end