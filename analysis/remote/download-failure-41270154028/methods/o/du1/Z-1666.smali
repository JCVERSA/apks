.method public Z()V
    .locals 4

    invoke-super {p0}, Lo/k08;->Z()V

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->g0:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo/du1;->I0()V

    :cond_0
    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->g0:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->g0:I

    iget-wide v2, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->a:J

    invoke-static {v2, v3, v1}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->k1(JI)V

    invoke-virtual {p0}, Lo/k08;->I()Lcom/snaptube/taskManager/datasets/TaskInfo;

    move-result-object v0

    invoke-static {v0}, Lo/a18;->a(Lcom/snaptube/taskManager/datasets/TaskInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/snaptube/taskManager/task/TaskError;->NO_STORAGE_PERMISSION:Lcom/snaptube/taskManager/task/TaskError;

    const-string v1, "Fail to start task due to permission issue."

    invoke-virtual {p0, v0, v1}, Lo/k08;->x(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
