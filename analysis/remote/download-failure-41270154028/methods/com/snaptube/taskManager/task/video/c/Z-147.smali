.method public Z()V
    .locals 2

    invoke-super {p0}, Lo/du1;->Z()V

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->o:Ljava/lang/String;

    invoke-static {v0}, Lo/yj2;->v(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/snaptube/taskManager/task/TaskError;->INVALID_MEDIA_FILE:Lcom/snaptube/taskManager/task/TaskError;

    const-string v1, "Video file not exist."

    invoke-virtual {p0, v0, v1}, Lo/k08;->x(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/c;->n:Lcom/snaptube/taskManager/task/video/g$d;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lcom/snaptube/taskManager/task/video/g$d;->g(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Lcom/snaptube/extractor/pluginlib/models/Format;)V

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/c;->F0()V

    return-void
.end method
