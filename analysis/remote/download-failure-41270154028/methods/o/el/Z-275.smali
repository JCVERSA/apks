.method public Z()V
    .locals 9

    invoke-static {}, Lo/uh;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lo/sq5;->c()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/snaptube/taskManager/task/TaskError;->NO_STORAGE_PERMISSION:Lcom/snaptube/taskManager/task/TaskError;

    const-string v1, "Fail to start task due to permission issue."

    invoke-virtual {p0, v0, v1}, Lo/k08;->x(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lo/el;->n:Lcom/snaptube/taskManager/datasets/a;

    invoke-virtual {v0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lo/el;->n:Lcom/snaptube/taskManager/datasets/a;

    invoke-virtual {v0}, Lcom/snaptube/taskManager/datasets/a;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lo/el;->n:Lcom/snaptube/taskManager/datasets/a;

    iget-object v2, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->o:Ljava/lang/String;

    sget-object v5, Lcom/wandoujia/download/rpc/DownloadConstants$ResourceType;->APP:Lcom/wandoujia/download/rpc/DownloadConstants$ResourceType;

    invoke-virtual {v0}, Lcom/snaptube/taskManager/datasets/a;->getVersion()Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-static/range {v1 .. v8}, Lcom/wandoujia/download/utils/StorageUtil;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/download/rpc/DownloadConstants$ResourceType;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/k08;->i0(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/wandoujia/download/utils/StorageUtil$GenerateSaveFileException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/snaptube/taskManager/task/TaskError;->GENERATE_SAVE_FILE_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    invoke-virtual {v0}, Lcom/wandoujia/download/utils/StorageUtil$GenerateSaveFileException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lo/d58;->c(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, Lo/k08;->y(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lo/du1;->F0()V

    return-void
.end method
