.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/g$a;->a:Lcom/snaptube/taskManager/task/video/g;

    invoke-static {v0}, Lcom/snaptube/taskManager/task/video/g;->g1(Lcom/snaptube/taskManager/task/video/g;)Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/g$a;->a:Lcom/snaptube/taskManager/task/video/g;

    invoke-static {v0}, Lcom/snaptube/taskManager/task/video/g;->f1(Lcom/snaptube/taskManager/task/video/g;)Lcom/snaptube/extractor/pluginlib/models/Format;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo$ExtractFrom;->CACHE:Lcom/snaptube/extractor/pluginlib/models/VideoInfo$ExtractFrom;

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/g$a;->a:Lcom/snaptube/taskManager/task/video/g;

    invoke-static {v1}, Lcom/snaptube/taskManager/task/video/g;->g1(Lcom/snaptube/taskManager/task/video/g;)Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getExtractFrom()Lcom/snaptube/extractor/pluginlib/models/VideoInfo$ExtractFrom;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/snaptube/taskManager/task/video/g$a;->a:Lcom/snaptube/taskManager/task/video/g;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/snaptube/taskManager/task/video/g;->k1(Lcom/snaptube/taskManager/task/video/g;Z)V

    return-void

    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/TimeoutException;

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/snaptube/taskManager/task/video/g$a;->a:Lcom/snaptube/taskManager/task/video/g;

    new-instance v0, Lcom/snaptube/taskManager/task/TaskException;

    sget-object v1, Lcom/snaptube/taskManager/task/TaskError;->EXTRACT_VIDEO_INFO_TIME_OUT:Lcom/snaptube/taskManager/task/TaskError;

    invoke-direct {v0, v1}, Lcom/snaptube/taskManager/task/TaskException;-><init>(Lcom/snaptube/taskManager/task/TaskError;)V

    invoke-static {p1, v0}, Lcom/snaptube/taskManager/task/video/g;->h1(Lcom/snaptube/taskManager/task/video/g;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/g$a;->a:Lcom/snaptube/taskManager/task/video/g;

    invoke-static {v0, p1}, Lcom/snaptube/taskManager/task/video/g;->h1(Lcom/snaptube/taskManager/task/video/g;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
