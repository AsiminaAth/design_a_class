class TaskTracker
    def initialize
        @list_of_tasks = []
    end

    def add(task)
        @list_of_tasks << task
    end

    def completed_tasks(task)
        fail "There is no such task!" unless @list_of_tasks.include? task
        @list_of_tasks.delete(task)
    end

    def list_of_todos
        return @list_of_tasks
    end
end 