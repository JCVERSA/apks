.method public F0()V
    .locals 17

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lo/k08;->I()Lcom/snaptube/taskManager/datasets/TaskInfo;

    move-result-object v0

    invoke-static {v0}, Lo/a18;->a(Lcom/snaptube/taskManager/datasets/TaskInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/snaptube/taskManager/task/TaskError;->NO_STORAGE_PERMISSION:Lcom/snaptube/taskManager/task/TaskError;

    const-string v2, "Fail to start task due to permission issue."

    invoke-virtual {v1, v0, v2}, Lo/k08;->x(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, v1, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v2, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->i:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    sget-object v3, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;->RUNNING:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    if-eq v2, v3, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/snaptube/taskManager/task/TaskError;->FILE_PATH_EMPTY:Lcom/snaptube/taskManager/task/TaskError;

    invoke-virtual {v1, v0, v2}, Lo/k08;->x(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    return-void

    :cond_2
    const-wide/16 v3, 0x0

    iput-wide v3, v1, Lo/du1;->l:J

    const/4 v0, -0x1

    const/4 v5, 0x0

    move-wide v6, v3

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lo/du1;->B0()I

    move-result v8

    const-wide/16 v9, -0x1

    if-ge v5, v8, :cond_7

    invoke-virtual {v1, v5}, Lo/du1;->A0(I)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v1, v5}, Lo/du1;->z0(I)Lcom/phoenix/download/DownloadRequest;

    move-result-object v11

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_3

    iget-wide v12, v1, Lo/du1;->l:J

    invoke-virtual {v1, v8, v11}, Lo/du1;->v0(Ljava/io/File;Lcom/phoenix/download/DownloadRequest;)J

    move-result-wide v14

    add-long/2addr v12, v14

    iput-wide v12, v1, Lo/du1;->l:J

    goto :goto_1

    :cond_3
    if-gez v0, :cond_4

    move v0, v5

    :cond_4
    :goto_1
    iget-wide v12, v1, Lo/k08;->i:J

    cmp-long v8, v12, v3

    if-gez v8, :cond_6

    cmp-long v8, v6, v3

    if-ltz v8, :cond_5

    if-eqz v11, :cond_5

    iget-wide v11, v11, Lcom/phoenix/download/DownloadRequest;->h:J

    cmp-long v8, v11, v3

    if-lez v8, :cond_5

    add-long/2addr v6, v11

    goto :goto_2

    :cond_5
    move-wide v6, v9

    :cond_6
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    cmp-long v5, v6, v3

    if-lez v5, :cond_8

    invoke-virtual {v1, v6, v7}, Lo/k08;->e0(J)V

    :cond_8
    if-gez v0, :cond_9

    invoke-virtual/range {p0 .. p0}, Lo/du1;->C0()V

    return-void

    :cond_9
    invoke-virtual {v1, v0}, Lo/du1;->A0(I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v1, v0}, Lo/du1;->z0(I)Lcom/phoenix/download/DownloadRequest;

    move-result-object v6

    iget-object v0, v1, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v7, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->u:J

    cmp-long v0, v7, v3

    if-lez v0, :cond_b

    invoke-static {}, Lo/qs1;->A()Lo/qs1;

    move-result-object v11

    iget-object v0, v1, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v12, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->u:J

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v6, Lcom/phoenix/download/DownloadRequest;->a:Ljava/lang/String;

    iget-object v0, v6, Lcom/phoenix/download/DownloadRequest;->d:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v11 .. v16}, Lo/qs1;->O(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    invoke-static {}, Lo/qs1;->A()Lo/qs1;

    move-result-object v0

    iget-object v7, v1, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v7, v7, Lcom/snaptube/taskManager/datasets/TaskInfo;->u:J

    invoke-virtual {v0, v7, v8}, Lo/qs1;->q(J)V

    iget-object v0, v1, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iput-wide v9, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->u:J

    :cond_b
    invoke-static {}, Lo/qs1;->A()Lo/qs1;

    move-result-object v0

    iget-object v7, v6, Lcom/phoenix/download/DownloadRequest;->c:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lo/qs1;->y(Ljava/lang/String;)Lcom/phoenix/download/DownloadInfo;

    move-result-object v7

    if-eqz v7, :cond_f

    invoke-interface {v7}, Lcom/phoenix/download/DownloadInfo;->getStatus()Lcom/phoenix/download/DownloadInfo$Status;

    move-result-object v0

    sget-object v8, Lcom/phoenix/download/DownloadInfo$Status;->CREATED:Lcom/phoenix/download/DownloadInfo$Status;

    if-eq v0, v8, :cond_e

    invoke-interface {v7}, Lcom/phoenix/download/DownloadInfo;->getStatus()Lcom/phoenix/download/DownloadInfo$Status;

    move-result-object v0

    sget-object v8, Lcom/phoenix/download/DownloadInfo$Status;->PENDING:Lcom/phoenix/download/DownloadInfo$Status;

    if-ne v0, v8, :cond_c

    goto :goto_3

    :cond_c
    invoke-interface {v7}, Lcom/phoenix/download/DownloadInfo;->getStatus()Lcom/phoenix/download/DownloadInfo$Status;

    move-result-object v0

    sget-object v8, Lcom/phoenix/download/DownloadInfo$Status;->DOWNLOADING:Lcom/phoenix/download/DownloadInfo$Status;

    if-eq v0, v8, :cond_d

    invoke-interface {v7}, Lcom/phoenix/download/DownloadInfo;->getStatus()Lcom/phoenix/download/DownloadInfo$Status;

    move-result-object v0

    sget-object v8, Lcom/phoenix/download/DownloadInfo$Status;->PAUSED:Lcom/phoenix/download/DownloadInfo$Status;

    if-ne v0, v8, :cond_f

    :cond_d
    iget-object v0, v1, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v8, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->u:J

    cmp-long v0, v8, v3

    if-gez v0, :cond_f

    invoke-static {}, Lo/qs1;->A()Lo/qs1;

    move-result-object v0

    invoke-interface {v7}, Lcom/phoenix/download/DownloadInfo;->getId()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lo/qs1;->q(J)V

    goto :goto_4

    :cond_e
    :goto_3
    invoke-static {}, Lo/qs1;->A()Lo/qs1;

    move-result-object v0

    invoke-interface {v7}, Lcom/phoenix/download/DownloadInfo;->getId()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lo/qs1;->q(J)V

    :cond_f
    :goto_4
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v6, Lcom/phoenix/download/DownloadRequest;->a:Ljava/lang/String;

    sget-object v3, Lcom/snaptube/taskManager/task/TaskError;->FILE_PATH_EMPTY:Lcom/snaptube/taskManager/task/TaskError;

    invoke-virtual {v3}, Lcom/snaptube/taskManager/task/TaskError;->getDescription()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/snaptube/taskManager/task/TaskTrace;->log(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v1, v3, v2}, Lo/k08;->x(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    return-void

    :cond_10
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/phoenix/download/DownloadRequest;->b(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_11

    iget-object v0, v6, Lcom/phoenix/download/DownloadRequest;->a:Ljava/lang/String;

    sget-object v3, Lcom/snaptube/taskManager/task/TaskError;->FILE_PATH_EMPTY:Lcom/snaptube/taskManager/task/TaskError;

    invoke-virtual {v3}, Lcom/snaptube/taskManager/task/TaskError;->getDescription()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/snaptube/taskManager/task/TaskTrace;->log(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v1, v3, v2}, Lo/k08;->x(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    return-void

    :cond_11
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/phoenix/download/DownloadRequest;->c(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    invoke-static {}, Lo/qs1;->A()Lo/qs1;

    move-result-object v0

    invoke-virtual {v0, v6}, Lo/qs1;->S(Lcom/phoenix/download/DownloadRequest;)Lcom/phoenix/download/DownloadInfo;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    if-nez v7, :cond_13

    sget-object v0, Lcom/snaptube/taskManager/task/TaskError;->START_DOWNLOAD_REQUEST_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    invoke-virtual {v0}, Lcom/snaptube/taskManager/task/TaskError;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lo/du1;->w0(Lcom/phoenix/download/DownloadInfo;Ljava/lang/String;)V

    iget-object v2, v6, Lcom/phoenix/download/DownloadRequest;->a:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/snaptube/taskManager/task/TaskTrace;->log(Ljava/lang/String;[Ljava/lang/String;)V

    iget-wide v7, v6, Lcom/phoenix/download/DownloadRequest;->h:J

    invoke-static {v7, v8}, Lcom/phoenix/download/b;->d(J)Z

    move-result v2

    if-nez v2, :cond_12

    const-string v0, "; "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v6, Lcom/phoenix/download/DownloadRequest;->h:J

    invoke-static {v6, v7}, Lo/ca8;->f(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/snaptube/taskManager/task/TaskError;->NO_ENOUGH_SPACE:Lcom/snaptube/taskManager/task/TaskError;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v3, v2}, Lo/k08;->y(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v3, v2}, Lo/k08;->y(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    iget-object v0, v1, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-interface {v7}, Lcom/phoenix/download/DownloadInfo;->getId()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->u:J

    iget-object v0, v1, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v8, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->u:J

    cmp-long v0, v8, v3

    if-gtz v0, :cond_14

    const-string v0, "Invalid download info"

    invoke-static {v7, v0}, Lo/du1;->w0(Lcom/phoenix/download/DownloadInfo;Ljava/lang/String;)V

    iget-object v2, v6, Lcom/phoenix/download/DownloadRequest;->a:Ljava/lang/String;

    sget-object v3, Lcom/snaptube/taskManager/task/TaskError;->INVALID_DOWNLOAD_INFO:Lcom/snaptube/taskManager/task/TaskError;

    invoke-virtual {v3}, Lcom/snaptube/taskManager/task/TaskError;->getDescription()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/snaptube/taskManager/task/TaskTrace;->log(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v1, v3, v0}, Lo/k08;->x(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    return-void

    :cond_14
    const-string v0, "Download started !"

    invoke-static {v7, v0}, Lo/du1;->w0(Lcom/phoenix/download/DownloadInfo;Ljava/lang/String;)V

    iget-object v0, v1, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v2, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->u:J

    invoke-virtual {v1, v2, v3}, Lo/du1;->H0(J)V

    return-void
.end method
