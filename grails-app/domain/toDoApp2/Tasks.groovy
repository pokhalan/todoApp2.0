package toDoApp2

class Tasks {
    String content
    Date dateCreated
    Date dateModified
    Date dateCompleted
    static constraints = {
        dateCreated nullable: true
        dateCompleted nullable: true
        dateModified nullable: true
    }
}
