.method public static valueOf(Ljava/lang/String;)Lcom/snaptube/taskManager/task/TaskError;
    .locals 1

    const-class v0, Lcom/snaptube/taskManager/task/TaskError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/snaptube/taskManager/task/TaskError;

    return-object p0
.end method
