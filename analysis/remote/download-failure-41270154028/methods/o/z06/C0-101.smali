.method public C0()V
    .locals 7

    const-string v0, "onPostDownload"

    invoke-virtual {p0}, Lo/z06;->N0()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {p0, v2}, Lo/z06;->P0(Lcom/snaptube/taskManager/datasets/TaskInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lo/z06;->o:Ljava/lang/String;

    invoke-static {v0}, Lcom/snaptube/plugin/PluginId;->fromName(Ljava/lang/String;)Lcom/snaptube/plugin/PluginId;

    move-result-object v0

    iget-object v1, p0, Lo/z06;->n:Lcom/dayuwuxian/em/api/proto/PluginInfo;

    iget-object v1, v1, Lcom/dayuwuxian/em/api/proto/PluginInfo;->version:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/c16;->c(Lcom/snaptube/plugin/PluginId;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lo/z06;->n:Lcom/dayuwuxian/em/api/proto/PluginInfo;

    iget-object v4, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v4}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lo/z06;->N0()Ljava/io/File;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lo/yz5;->b(Lcom/dayuwuxian/em/api/proto/PluginInfo;Ljava/lang/String;Ljava/io/File;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "download error "

    const/4 v5, 0x0

    if-nez v3, :cond_1

    sget-object v1, Lcom/snaptube/taskManager/task/TaskError;->PLUGIN_EXTRACT_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    invoke-virtual {p0, v1, v5}, Lo/k08;->x(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    iget-object v3, p0, Lo/z06;->o:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/snaptube/taskManager/task/TaskError;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v2, v0}, Lo/z06;->O0(Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;)V

    return-void

    :cond_1
    if-eqz v1, :cond_4

    iget-object v3, p0, Lo/z06;->n:Lcom/dayuwuxian/em/api/proto/PluginInfo;

    invoke-static {v3}, Lo/c16;->p(Lcom/dayuwuxian/em/api/proto/PluginInfo;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v3}, Lo/yj2;->q(Ljava/io/File;)Z

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v1, Lcom/snaptube/taskManager/task/TaskError;->PLUGIN_DELETE_PLUGIN_DIR_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    invoke-virtual {p0, v1, v5}, Lo/k08;->x(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    iget-object v3, p0, Lo/z06;->o:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/snaptube/taskManager/task/TaskError;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v2, v0}, Lo/z06;->O0(Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;)V

    return-void

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    sget-object v1, Lcom/snaptube/taskManager/task/TaskError;->PLUGIN_RENAME_PLUGIN_DIR_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    invoke-virtual {p0, v1, v5}, Lo/k08;->x(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    iget-object v3, p0, Lo/z06;->o:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/snaptube/taskManager/task/TaskError;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v2, v0}, Lo/z06;->O0(Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;)V

    return-void

    :cond_4
    invoke-super {p0}, Lo/du1;->C0()V

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v3, Lcom/snaptube/taskManager/task/TaskError;->PLUGIN_EXTRACT_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "|Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lo/d58;->c(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lo/k08;->y(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lo/z06;->o:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "download error |Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v2, v0}, Lo/z06;->O0(Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;)V

    return-void
.end method
