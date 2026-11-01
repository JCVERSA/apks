.method public g(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Lcom/snaptube/extractor/pluginlib/models/Format;)V
    .locals 5

    invoke-static {}, Lcom/snaptube/taskManager/CombinTask;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/snaptube/taskManager/task/video/i;->a:Lo/k08;

    sget-object p2, Lcom/snaptube/taskManager/task/TaskError;->HD_COMBINE_NOT_SUPPORTED:Lcom/snaptube/taskManager/task/TaskError;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lo/k08;->x(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/snaptube/taskManager/task/video/i;->c:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getFormats()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lo/ks2;->k(ZLjava/util/List;Lcom/snaptube/extractor/pluginlib/models/Format;)[Lcom/snaptube/extractor/pluginlib/models/Format;

    move-result-object v2

    iget-object v3, p0, Lcom/snaptube/taskManager/task/video/i;->d:[Lcom/snaptube/extractor/pluginlib/models/Format;

    aget-object v4, v2, v1

    aput-object v4, v3, v1

    aget-object v2, v2, v0

    aput-object v2, v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lcom/snaptube/taskManager/task/video/i;->l()Ljava/io/File;

    move-result-object p2

    invoke-static {p2}, Lo/wd9;->h(Ljava/io/File;)V

    invoke-static {}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->y()Lcom/snaptube/taskManager/FfmpegTaskScheduler;

    move-result-object p2

    invoke-virtual {p2}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->E()V

    new-instance p2, Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper;

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/i;->b:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v2, p0, Lcom/snaptube/taskManager/task/video/i;->d:[Lcom/snaptube/extractor/pluginlib/models/Format;

    aget-object v0, v2, v0

    invoke-direct {p2, v1, p1, v0}, Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper;-><init>(Lcom/snaptube/taskManager/datasets/TaskInfo;Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Lcom/snaptube/extractor/pluginlib/models/Format;)V

    iput-object p2, p0, Lcom/snaptube/taskManager/task/video/i;->g:Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper;

    invoke-virtual {p2}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->f0()V

    return-void

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resolveHD: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/snaptube/taskManager/task/video/i;->d:[Lcom/snaptube/extractor/pluginlib/models/Format;

    aget-object v0, v3, v0

    aget-object v1, v3, v1

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getFormats()Ljava/util/List;

    move-result-object p1

    invoke-static {p2, v0, v1, p1}, Lo/ks2;->h(Lcom/snaptube/extractor/pluginlib/models/Format;Lcom/snaptube/extractor/pluginlib/models/Format;Lcom/snaptube/extractor/pluginlib/models/Format;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/snaptube/taskManager/task/video/i;->a:Lo/k08;

    sget-object v0, Lcom/snaptube/taskManager/task/TaskError;->RESOLVE_FORMAT_ERROR:Lcom/snaptube/taskManager/task/TaskError;

    const-string v1, "resolveHD failed!"

    invoke-virtual {p2, v0, v1, p1}, Lo/k08;->y(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
