.method public final b2(Ljava/lang/Throwable;)V
    .locals 3

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/g;->l2()V

    invoke-virtual {p0, p1}, Lcom/snaptube/taskManager/task/video/g;->m2(Ljava/lang/Throwable;)V

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/snaptube/taskManager/task/TaskException;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/snaptube/taskManager/task/TaskException;

    invoke-virtual {v0}, Lcom/snaptube/taskManager/task/TaskException;->getError()Lcom/snaptube/taskManager/task/TaskError;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lo/d58;->c(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lo/k08;->y(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/snaptube/taskManager/task/TaskError;->EXTRACT_VIDEO_INFO_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lo/d58;->c(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lo/k08;->y(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/snaptube/taskManager/task/TaskError;->EXTRACT_VIDEO_INFO_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lo/k08;->x(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
