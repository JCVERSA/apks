.method public onStart()V
    .locals 9

    iget-object v0, p0, Lo/sw2;->a:Lo/cm3;

    invoke-virtual {v0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lo/sw2;->a:Lo/cm3;

    invoke-virtual {v0}, Lo/cm3;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lo/sw2;->a:Lo/cm3;

    iget-object v2, v0, Lo/cm3;->y0:Ljava/lang/String;

    sget-object v5, Lcom/wandoujia/download/rpc/DownloadConstants$ResourceType;->APP:Lcom/wandoujia/download/rpc/DownloadConstants$ResourceType;

    invoke-virtual {v0}, Lo/cm3;->getVersion()Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-static/range {v1 .. v8}, Lcom/wandoujia/download/utils/StorageUtil;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/download/rpc/DownloadConstants$ResourceType;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/sw2;->c:Lo/f57;

    invoke-virtual {v1, v0}, Lo/f57;->i0(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/wandoujia/download/utils/StorageUtil$GenerateSaveFileException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lo/sw2;->c:Lo/f57;

    sget-object v2, Lcom/snaptube/taskManager/task/TaskError;->GENERATE_SAVE_FILE_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    invoke-virtual {v0}, Lcom/wandoujia/download/utils/StorageUtil$GenerateSaveFileException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lo/d58;->c(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lo/k08;->y(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :goto_0
    iget-object v0, p0, Lo/sw2;->c:Lo/f57;

    invoke-virtual {v0}, Lo/f57;->F0()V

    return-void
.end method
