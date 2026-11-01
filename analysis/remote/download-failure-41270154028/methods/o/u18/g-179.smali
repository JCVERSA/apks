.method public g(Lcom/snaptube/taskManager/datasets/TaskInfo;)V
    .locals 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v2, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->m:J

    sub-long/2addr v0, v2

    iget-object v2, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->B:Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;

    if-nez v2, :cond_0

    sget-object v2, Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;->UNKNOWN:Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;

    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lo/yj2;->v(Ljava/lang/String;)Z

    move-result v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wandoujia/download/utils/StorageUtil;->o(Ljava/lang/String;)Z

    move-result v5

    new-instance v6, Lcom/snaptube/premium/log/ReportPropertyBuilder;

    invoke-direct {v6}, Lcom/snaptube/premium/log/ReportPropertyBuilder;-><init>()V

    const-string v7, "AppError"

    invoke-interface {v6, v7}, Lo/ah3;->setEventName(Ljava/lang/String;)Lo/ah3;

    move-result-object v7

    const-string v8, "insert_download_task_error"

    invoke-interface {v7, v8}, Lo/ah3;->setAction(Ljava/lang/String;)Lo/ah3;

    move-result-object v7

    const-string v8, "category"

    invoke-virtual {p1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->e()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v7

    sget-object v8, Lcom/snaptube/taskManager/task/TaskError;->NO_STORAGE_PERMISSION:Lcom/snaptube/taskManager/task/TaskError;

    const-string v9, "Fail to start task due to permission issue."

    invoke-virtual {v8, v9}, Lcom/snaptube/taskManager/task/TaskError;->appendDetails(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "error"

    invoke-interface {v7, v10, v9}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "elapsed"

    invoke-interface {v7, v1, v0}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    const-string v1, "content_url"

    invoke-virtual {p1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->p()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v1, v7}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "error_no"

    invoke-interface {v0, v7, v1}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    const-string v1, "file_type"

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    iget-object v1, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->p:Ljava/lang/String;

    invoke-static {v1}, Lo/jy2;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format_tag"

    invoke-interface {v0, v2, v1}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/yj2;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "file_extension"

    invoke-interface {v0, v2, v1}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    const-string v1, "dir_exists"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    iget v1, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->C:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "fail_times"

    invoke-interface {v0, v2, v1}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    const-string v1, "removable_disk"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/yj8;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-interface {v0, v2, v1}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    iget-wide v1, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->N:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "extract_duration"

    invoke-interface {v0, v2, v1}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    iget v1, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->Q:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "extract_count"

    invoke-interface {v0, v2, v1}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    iget-wide v1, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->P:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "process_duration"

    invoke-interface {v0, v2, v1}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    const-string v1, "extract_from"

    iget-object v2, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->R:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    const-string v1, "from"

    iget-object v2, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->V:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    iget-wide v1, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->O:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "download_duration"

    invoke-interface {v0, v2, v1}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/yj2;->y(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/wandoujia/download/utils/StorageUtil;->r(J)J

    move-result-wide v2

    iget-wide v4, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->d:J

    sub-long/2addr v4, v0

    invoke-static {v4, v5}, Lcom/wandoujia/download/utils/StorageUtil;->r(J)J

    move-result-wide v0

    const-string p1, "free_size"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, p1, v2}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object p1

    const-string v2, "shortage_size"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    :cond_2
    invoke-static {}, Lo/vq6;->K()Lo/kh3;

    move-result-object p1

    invoke-interface {p1, v6}, Lo/kh3;->g(Lo/ah3;)V

    return-void
.end method
