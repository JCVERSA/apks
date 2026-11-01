.method public Z()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lo/k08;->g:J

    invoke-static {}, Lo/sq5;->c()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/snaptube/taskManager/task/TaskError;->NO_STORAGE_PERMISSION:Lcom/snaptube/taskManager/task/TaskError;

    const-string v1, "Fail to start task due to permission issue."

    invoke-virtual {p0, v0, v1}, Lo/k08;->x(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lo/f57;->n:Lo/f57$a;

    invoke-interface {v0}, Lo/f57$a;->onStart()V

    return-void
.end method
