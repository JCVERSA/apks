.method public final i4()V
    .locals 10

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "launch_from"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "extra.L.task_status"

    if-eqz v3, :cond_1

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    instance-of v5, v3, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    if-eqz v5, :cond_2

    check-cast v3, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    goto :goto_2

    :cond_2
    move-object v3, v2

    :goto_2
    const-string v5, "notification_download"

    invoke-static {v5, v0}, Lo/or3;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;->ERROR:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    if-eq v0, v3, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-wide/16 v5, -0x1

    const-string v3, "extra.L.task_id"

    if-eqz v0, :cond_4

    invoke-virtual {v0, v3, v5, v6}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_3

    :cond_4
    move-object v0, v2

    :goto_3
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v9, v7, v5

    if-nez v9, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_8
    invoke-static {p0}, Lo/y24;->a(Lo/x24;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v4

    invoke-static {}, Lo/dp1;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v5

    new-instance v7, Lcom/snaptube/premium/files/downloading/DownloadingTaskFragment$retryTaskFromNotification$1;

    invoke-direct {v7, v0, p0, v2}, Lcom/snaptube/premium/files/downloading/DownloadingTaskFragment$retryTaskFromNotification$1;-><init>(Ljava/lang/Long;Lcom/snaptube/premium/files/downloading/DownloadingTaskFragment;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lo/wd0;->d(Lo/w61;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lo/rx2;ILjava/lang/Object;)Lo/tt3;

    :cond_9
    :goto_4
    return-void
.end method
