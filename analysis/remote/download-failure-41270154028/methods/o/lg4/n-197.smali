.method public final n()V
    .locals 14

    sget-object v0, Lcom/snaptube/plugin/PluginId;->FFMPEG:Lcom/snaptube/plugin/PluginId;

    invoke-virtual {v0}, Lcom/snaptube/plugin/PluginId;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/e;->a:Lcom/snaptube/taskManager/task/video/g;

    const-string v1, "ffmpeg not support"

    invoke-virtual {v0, v1}, Lo/du1;->M0(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/snaptube/taskManager/task/video/e;->c:Lcom/snaptube/taskManager/datasets/TaskInfo;

    const-string v6, "ffmpeg_not_start"

    const-string v7, ""

    const-string v3, "process_m4a"

    const-wide/16 v4, 0x0

    invoke-static/range {v2 .. v7}, Lo/ne2;->c(Lcom/snaptube/taskManager/datasets/TaskInfo;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v8, p0, Lcom/snaptube/taskManager/task/video/e;->c:Lcom/snaptube/taskManager/datasets/TaskInfo;

    const-string v12, "ffmpeg_pre_start"

    const-string v13, ""

    const-string v9, "process_m4a"

    const-wide/16 v10, 0x0

    invoke-static/range {v8 .. v13}, Lo/ne2;->c(Lcom/snaptube/taskManager/datasets/TaskInfo;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/e;->a:Lcom/snaptube/taskManager/task/video/g;

    iget-object v1, p0, Lo/lg4;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11016b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo/k08;->m0(Ljava/lang/String;Z)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :try_start_0
    new-instance v2, Lo/ee2;

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lo/ee2;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lo/lg4;->g:Lo/ee2;

    sget-object v2, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->M4A_MOCK_WITH_MP4:Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;

    invoke-virtual {v2}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->getTag()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/snaptube/taskManager/task/video/e;->c:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v3, v3, Lcom/snaptube/taskManager/datasets/TaskInfo;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/snaptube/taskManager/task/video/e;->c:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v2}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lo/lg4;->p()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lo/qi2;->g(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/snaptube/taskManager/task/video/e;->c:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v2}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lo/lg4;->p()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lo/qi2;->h(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Lo/qi2;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lo/lg4;->g:Lo/ee2;

    new-instance v4, Lo/lg4$a;

    invoke-direct {v4, p0, v0, v1, v2}, Lo/lg4$a;-><init>(Lo/lg4;J[Ljava/lang/String;)V

    invoke-virtual {v3, v2, v4}, Lo/ee2;->d([Ljava/lang/String;Lo/he2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    iget-object v3, p0, Lcom/snaptube/taskManager/task/video/e;->c:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v5, v4, v0

    const-string v7, "ffmpeg_fail"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v4, "process_m4a"

    invoke-static/range {v3 .. v8}, Lo/ne2;->c(Lcom/snaptube/taskManager/datasets/TaskInfo;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/snaptube/taskManager/task/video/e;->a:Lcom/snaptube/taskManager/task/video/g;

    sget-object v4, Lcom/snaptube/taskManager/task/TaskError;->M4A_CONVERT_MPEG_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lo/k08;->x(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    iget-object v2, p0, Lo/lg4;->g:Lo/ee2;

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    iput-object v2, p0, Lo/lg4;->g:Lo/ee2;

    :cond_2
    iget-object v3, p0, Lcom/snaptube/taskManager/task/video/e;->c:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v5, v4, v0

    const-string v7, "ffmpeg_finish"

    const-string v8, ""

    const-string v4, "process_m4a"

    invoke-static/range {v3 .. v8}, Lo/ne2;->c(Lcom/snaptube/taskManager/datasets/TaskInfo;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
