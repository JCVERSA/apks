.method private synthetic n(ZLjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/snaptube/taskManager/task/video/i;->q(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/snaptube/taskManager/task/video/i;->a:Lo/k08;

    sget-object v0, Lcom/snaptube/taskManager/task/TaskError;->HD_FAILED_TO_MUX:Lcom/snaptube/taskManager/task/TaskError;

    invoke-virtual {p1, v0, p2}, Lo/k08;->x(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
