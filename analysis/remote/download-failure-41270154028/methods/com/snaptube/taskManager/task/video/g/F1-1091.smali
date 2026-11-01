.method public final F1(Ljava/lang/Throwable;)Z
    .locals 1

    invoke-static {p1}, Lo/zc2;->c(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/snaptube/taskManager/task/TaskException;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/snaptube/taskManager/task/TaskException;

    invoke-virtual {p1}, Lcom/snaptube/taskManager/task/TaskException;->getError()Lcom/snaptube/taskManager/task/TaskError;

    move-result-object p1

    sget-object v0, Lcom/snaptube/taskManager/task/TaskError;->EXTRACT_VIDEO_INFO_TIME_OUT:Lcom/snaptube/taskManager/task/TaskError;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
