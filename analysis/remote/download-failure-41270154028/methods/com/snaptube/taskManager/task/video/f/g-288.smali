.method public g(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Lcom/snaptube/extractor/pluginlib/models/Format;)V
    .locals 3

    invoke-static {}, Lcom/snaptube/taskManager/CombinTask;->isSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/snaptube/taskManager/task/video/f;->c:Lo/k08;

    sget-object p2, Lcom/snaptube/taskManager/task/TaskError;->HD_COMBINE_NOT_SUPPORTED:Lcom/snaptube/taskManager/task/TaskError;

    invoke-virtual {p1, p2, v1}, Lo/k08;->x(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/snaptube/taskManager/task/video/f;->e:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    :try_start_0
    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/f;->i:Lo/dv8;

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getFormats()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Lo/dv8;->E(Lcom/snaptube/extractor/pluginlib/models/Format;Ljava/util/List;)[Lcom/snaptube/extractor/pluginlib/models/Format;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/taskManager/task/video/f;->d:[Lcom/snaptube/extractor/pluginlib/models/Format;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/f;->j()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lo/wd9;->h(Ljava/io/File;)V

    invoke-static {}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->y()Lcom/snaptube/taskManager/FfmpegTaskScheduler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->E()V

    invoke-direct {p0}, Lcom/snaptube/taskManager/task/video/f;->l()V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveCB: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getFormats()Ljava/util/List;

    move-result-object p1

    invoke-static {p2, v1, v1, p1}, Lo/ks2;->h(Lcom/snaptube/extractor/pluginlib/models/Format;Lcom/snaptube/extractor/pluginlib/models/Format;Lcom/snaptube/extractor/pluginlib/models/Format;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/snaptube/taskManager/task/video/f;->c:Lo/k08;

    sget-object v0, Lcom/snaptube/taskManager/task/TaskError;->RESOLVE_FORMAT_ERROR:Lcom/snaptube/taskManager/task/TaskError;

    invoke-virtual {p2, v0, p1}, Lo/k08;->x(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    return-void
.end method
