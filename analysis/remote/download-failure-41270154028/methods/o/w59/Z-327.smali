.method public Z()V
    .locals 2

    invoke-super {p0}, Lo/du1;->Z()V

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->o:Ljava/lang/String;

    invoke-static {v0}, Lo/yj2;->v(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/snaptube/taskManager/task/TaskError;->FILE_PATH_EMPTY:Lcom/snaptube/taskManager/task/TaskError;

    const-string v1, "WhatsApp file not exist."

    invoke-virtual {p0, v0, v1}, Lo/k08;->x(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lo/w59;->F0()V

    return-void
.end method
