.method public constructor <init>(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/snaptube/taskManager/task/TaskException;->error:Lcom/snaptube/taskManager/task/TaskError;

    return-void
.end method
