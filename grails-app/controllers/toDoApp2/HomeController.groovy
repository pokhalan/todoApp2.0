package toDoApp2

class HomeController {

    def index() {
        List<Tasks> tasksList = Tasks.list()
        render view: "index", model: [tasksList: tasksList]
    }

    def save(Tasks tasksTaker) {
        tasksTaker.dateCreated = new Date()
        tasksTaker.dateModified = new Date()
        tasksTaker.dateCompleted = null

        if (tasksTaker.validate()) {
            tasksTaker.save flush: true, failorError: true
            flash.Message = "YO bOB GOT YOUR bACK...eVERYTHIng IS REcORDEd"

        } else {
            flash.Message = "opps something went wrong bob..."

        }
        redirect action: "index"
    }

    def markCompleted() {
        Tasks tasks=Tasks.get(params.id)
        tasks.dateModified = new Date()
        tasks.dateCompleted = new Date()
        redirect action: "index"
    }
    def completed(){
        List<Tasks> tasksList = Tasks.list()
        render view: "completed", model: [tasksList: tasksList]
    }
}