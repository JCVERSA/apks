.method public final p2()V
    .locals 9

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-boolean v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->W:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->k:Ljava/lang/String;

    invoke-static {v0}, Lo/wd9;->J(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-boolean v1, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->f0:Z

    if-eqz v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/g;->n:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/g;->o:Lcom/snaptube/extractor/pluginlib/models/Format;

    invoke-static {v0, v1}, Lo/wd9;->v(Ljava/lang/String;Lcom/snaptube/extractor/pluginlib/models/Format;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance v1, Lcom/snaptube/taskManager/datasets/TaskInfo$b;

    invoke-direct {v1}, Lcom/snaptube/taskManager/datasets/TaskInfo$b;-><init>()V

    iget-object v2, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v2}, Lcom/snaptube/taskManager/datasets/TaskInfo;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snaptube/taskManager/datasets/TaskInfo$b;->c(Ljava/lang/String;)Lcom/snaptube/taskManager/datasets/TaskInfo$b;

    move-result-object v1

    iget-object v2, p0, Lcom/snaptube/taskManager/task/video/g;->n:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    invoke-virtual {v2}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snaptube/taskManager/datasets/TaskInfo$b;->o(Ljava/lang/String;)Lcom/snaptube/taskManager/datasets/TaskInfo$b;

    move-result-object v1

    iget-object v2, p0, Lcom/snaptube/taskManager/task/video/g;->o:Lcom/snaptube/extractor/pluginlib/models/Format;

    invoke-virtual {v1, v2}, Lcom/snaptube/taskManager/datasets/TaskInfo$b;->i(Lcom/snaptube/extractor/pluginlib/models/Format;)Lcom/snaptube/taskManager/datasets/TaskInfo$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snaptube/taskManager/datasets/TaskInfo$b;->t(Ljava/lang/String;)Lcom/snaptube/taskManager/datasets/TaskInfo$b;

    move-result-object v1

    iget-object v2, p0, Lcom/snaptube/taskManager/task/video/g;->o:Lcom/snaptube/extractor/pluginlib/models/Format;

    iget-object v3, p0, Lcom/snaptube/taskManager/task/video/g;->n:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    invoke-static {v2, v3}, Lcom/snaptube/taskManager/datasets/TaskInfo;->j(Lcom/snaptube/extractor/pluginlib/models/Format;Lcom/snaptube/extractor/pluginlib/models/VideoInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snaptube/taskManager/datasets/TaskInfo$b;->s(Ljava/lang/String;)Lcom/snaptube/taskManager/datasets/TaskInfo$b;

    move-result-object v1

    iget-object v2, p0, Lcom/snaptube/taskManager/task/video/g;->n:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    invoke-virtual {v2}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getDurationInSecond()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/snaptube/taskManager/datasets/TaskInfo$b;->m(J)Lcom/snaptube/taskManager/datasets/TaskInfo$b;

    move-result-object v1

    iget-object v2, p0, Lcom/snaptube/taskManager/task/video/g;->n:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    invoke-virtual {v2}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getMetaKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snaptube/taskManager/datasets/TaskInfo$b;->n(Ljava/lang/String;)Lcom/snaptube/taskManager/datasets/TaskInfo$b;

    move-result-object v1

    iget-object v2, p0, Lcom/snaptube/taskManager/task/video/g;->o:Lcom/snaptube/extractor/pluginlib/models/Format;

    invoke-virtual {v2}, Lcom/snaptube/extractor/pluginlib/models/Format;->getSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/snaptube/taskManager/datasets/TaskInfo$b;->u(J)Lcom/snaptube/taskManager/datasets/TaskInfo$b;

    move-result-object v1

    iget-object v2, p0, Lcom/snaptube/taskManager/task/video/g;->n:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    invoke-virtual {v2}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getExtractorType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snaptube/taskManager/datasets/TaskInfo$b;->g(Ljava/lang/String;)Lcom/snaptube/taskManager/datasets/TaskInfo$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snaptube/taskManager/datasets/TaskInfo$b;->a()Lcom/snaptube/taskManager/datasets/TaskInfo;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lo/wd9;->C()Ljava/lang/String;

    move-result-object v0

    :cond_3
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "title"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "thumbnailUrl"

    iget-object v4, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->l:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "media_duration"

    iget-wide v4, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->s:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "meta_key"

    iget-object v4, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->y:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "referer"

    invoke-virtual {v1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->p()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "requestUrl"

    iget-object v4, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->o:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "formatTag"

    iget-object v4, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->p:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "finalFormatTag"

    iget-object v4, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->q:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "contentType"

    iget-object v4, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->r:Lcom/phoenix/download/DownloadInfo$ContentType;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "content_type2"

    iget-object v4, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->B:Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "content_type2"

    iget-object v4, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->B:Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "visible"

    iget-object v4, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-boolean v4, v4, Lcom/snaptube/taskManager/datasets/TaskInfo;->x:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    const/4 v4, -0x1

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-wide v3, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->d:J

    const-wide/16 v6, 0x0

    cmp-long v8, v3, v6

    if-lez v8, :cond_5

    const-string v6, "total_bytes"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_5
    :try_start_0
    iget-object v3, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/snaptube/taskManager/datasets/TaskInfo;->W:Z

    iget-object v4, p0, Lcom/snaptube/taskManager/task/video/g;->n:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    invoke-virtual {v4}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getReportData()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/snaptube/taskManager/datasets/TaskInfo;->O(Ljava/util/Map;)V

    iget-object v3, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v3}, Lcom/snaptube/taskManager/datasets/TaskInfo;->h()Ljava/lang/String;

    move-result-object v3

    const-string v4, "extra"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    const-class v3, Lcom/snaptube/taskManager/task/video/g;

    monitor-enter v3

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/snaptube/taskManager/task/video/g;->v1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-boolean v4, v4, Lcom/snaptube/taskManager/datasets/TaskInfo;->G:Z

    if-nez v4, :cond_6

    invoke-virtual {v1, v0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->R(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_6
    iput-object v0, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->M:Ljava/lang/String;

    sget-object v4, Lcom/snaptube/premium/vault/LockManager;->a:Lcom/snaptube/premium/vault/LockManager;

    invoke-virtual {v4, v0}, Lcom/snaptube/premium/vault/LockManager;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->R(Ljava/lang/String;)V

    :goto_2
    const-string v0, "filePath"

    invoke-virtual {v1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->a:J

    invoke-static {v0, v1, v2, v5}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->e1(JLandroid/content/ContentValues;Z)I

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->a:J

    invoke-static {v0, v1}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->Q0(J)Lcom/snaptube/taskManager/datasets/TaskInfo;

    move-result-object v0

    if-eqz v0, :cond_7

    iput-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    return-void

    :cond_7
    new-instance v0, Lcom/snaptube/taskManager/task/TaskException;

    sget-object v1, Lcom/snaptube/taskManager/task/TaskError;->TASK_DELETE:Lcom/snaptube/taskManager/task/TaskError;

    invoke-direct {v0, v1}, Lcom/snaptube/taskManager/task/TaskException;-><init>(Lcom/snaptube/taskManager/task/TaskError;)V

    throw v0

    :cond_8
    :try_start_2
    new-instance v0, Lcom/snaptube/taskManager/task/TaskException;

    sget-object v1, Lcom/snaptube/taskManager/task/TaskError;->FILE_PATH_EMPTY:Lcom/snaptube/taskManager/task/TaskError;

    invoke-direct {v0, v1}, Lcom/snaptube/taskManager/task/TaskException;-><init>(Lcom/snaptube/taskManager/task/TaskError;)V

    throw v0

    :goto_3
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
