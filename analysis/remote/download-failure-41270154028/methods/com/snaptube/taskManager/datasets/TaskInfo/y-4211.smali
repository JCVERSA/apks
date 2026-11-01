.method public y()Z
    .locals 2

    iget-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->p0:Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

    sget-object v1, Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;->EXTRACT_HTTP_UNAUTHORIZED:Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
