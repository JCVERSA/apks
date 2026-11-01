.method public Z()V
    .locals 6

    invoke-super {p0}, Lo/du1;->Z()V

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->w:Ljava/lang/String;

    invoke-static {v0}, Lo/c16;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/z06;->o:Ljava/lang/String;

    invoke-static {v0}, Lcom/snaptube/plugin/PluginId;->fromName(Ljava/lang/String;)Lcom/snaptube/plugin/PluginId;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "onStart"

    const/4 v3, 0x0

    const-string v4, "download error "

    if-nez v0, :cond_0

    sget-object v0, Lcom/snaptube/taskManager/task/TaskError;->PLUGIN_PARSE_IDENTITY_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    invoke-virtual {p0, v0, v1}, Lo/k08;->x(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    iget-object v1, p0, Lo/z06;->o:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/snaptube/taskManager/task/TaskError;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3, v2}, Lo/z06;->O0(Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->I()Lcom/snaptube/plugin/a;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/snaptube/plugin/a;->v(Lcom/snaptube/plugin/PluginId;)Lcom/dayuwuxian/em/api/proto/PluginInfo;

    move-result-object v0

    iput-object v0, p0, Lo/z06;->n:Lcom/dayuwuxian/em/api/proto/PluginInfo;

    if-nez v0, :cond_1

    sget-object v0, Lcom/snaptube/taskManager/task/TaskError;->PLUGIN_INFO_NOT_EXISTS:Lcom/snaptube/taskManager/task/TaskError;

    invoke-virtual {p0, v0, v1}, Lo/k08;->x(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    iget-object v1, p0, Lo/z06;->o:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/snaptube/taskManager/task/TaskError;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3, v2}, Lo/z06;->O0(Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;)V

    return-void

    :cond_1
    invoke-static {v0}, Lo/c16;->w(Lcom/dayuwuxian/em/api/proto/PluginInfo;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lo/z06;->n:Lcom/dayuwuxian/em/api/proto/PluginInfo;

    iget-object v0, v0, Lcom/dayuwuxian/em/api/proto/PluginInfo;->supported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object v0, p0, Lo/z06;->n:Lcom/dayuwuxian/em/api/proto/PluginInfo;

    iget-object v5, v0, Lcom/dayuwuxian/em/api/proto/PluginInfo;->name:Ljava/lang/String;

    iget-object v0, v0, Lcom/dayuwuxian/em/api/proto/PluginInfo;->version:Ljava/lang/String;

    invoke-static {v5, v0}, Lo/c16;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v5, v5, Lcom/snaptube/taskManager/datasets/TaskInfo;->w:Ljava/lang/String;

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/snaptube/taskManager/task/TaskError;->PLUGIN_IDENTITY_NOT_MATCHED:Lcom/snaptube/taskManager/task/TaskError;

    invoke-virtual {p0, v0, v1}, Lo/k08;->x(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    iget-object v1, p0, Lo/z06;->o:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/snaptube/taskManager/task/TaskError;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3, v2}, Lo/z06;->O0(Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;)V

    return-void

    :cond_3
    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->o:Ljava/lang/String;

    iget-object v1, p0, Lo/z06;->n:Lcom/dayuwuxian/em/api/proto/PluginInfo;

    iget-object v1, v1, Lcom/dayuwuxian/em/api/proto/PluginInfo;->url:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->v:Ljava/lang/String;

    iget-object v1, p0, Lo/z06;->n:Lcom/dayuwuxian/em/api/proto/PluginInfo;

    iget-object v1, v1, Lcom/dayuwuxian/em/api/proto/PluginInfo;->md5:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v2, p0, Lo/z06;->n:Lcom/dayuwuxian/em/api/proto/PluginInfo;

    iget-object v3, v2, Lcom/dayuwuxian/em/api/proto/PluginInfo;->url:Ljava/lang/String;

    iput-object v3, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->o:Ljava/lang/String;

    iget-object v2, v2, Lcom/dayuwuxian/em/api/proto/PluginInfo;->md5:Ljava/lang/String;

    iput-object v2, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->v:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-static {v1}, Lo/rt1;->l(Lcom/snaptube/taskManager/datasets/TaskInfo;)V

    :cond_8
    invoke-virtual {p0}, Lo/du1;->F0()V

    return-void

    :cond_9
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "identity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v1, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pluginInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/z06;->n:Lcom/dayuwuxian/em/api/proto/PluginInfo;

    if-eqz v1, :cond_a

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lo/z06;->n:Lcom/dayuwuxian/em/api/proto/PluginInfo;

    invoke-static {v5}, Lo/j23;->h(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    :goto_3
    sget-object v1, Lcom/snaptube/taskManager/task/TaskError;->PLUGIN_INFO_INVALID:Lcom/snaptube/taskManager/task/TaskError;

    invoke-virtual {p0, v1, v0}, Lo/k08;->x(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    iget-object v0, p0, Lo/z06;->o:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/snaptube/taskManager/task/TaskError;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3, v2}, Lo/z06;->O0(Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;)V

    return-void
.end method
