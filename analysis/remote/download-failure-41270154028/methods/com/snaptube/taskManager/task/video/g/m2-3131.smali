.method public final m2(Ljava/lang/Throwable;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/k08;->b:Landroid/content/Context;

    const v2, 0x7f110633

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lo/zc2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    sget-object v2, Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;->EXTRACT_LOGIN_REQUIRED:Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

    iput-object v2, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->p0:Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

    invoke-static {p1, v1}, Lo/g58;->h(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->q0:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1
    invoke-static {v0}, Lo/zc2;->m(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    sget-object v2, Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;->EXTRACT_STATUS_ERROR:Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

    iput-object v2, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->p0:Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

    invoke-static {p1, v1}, Lo/g58;->h(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->q0:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    invoke-static {v0}, Lo/zc2;->o(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    sget-object v2, Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;->EXTRACT_UNPLAYABLE:Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

    iput-object v2, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->p0:Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

    invoke-static {p1, v1}, Lo/g58;->h(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->q0:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lo/zc2;->n(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    sget-object v2, Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;->EXTRACT_LIVE_STREAM_OFFLINE:Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

    iput-object v2, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->p0:Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

    invoke-static {p1, v1}, Lo/g58;->h(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->q0:Ljava/lang/String;

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lo/zc2;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    sget-object v0, Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;->EXTRACT_LIVE_UNAVAILABLE:Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

    iput-object v0, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->p0:Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

    iget-object v0, p0, Lo/k08;->b:Landroid/content/Context;

    const v1, 0x7f110382

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->q0:Ljava/lang/String;

    goto :goto_0

    :cond_5
    invoke-static {p1}, Lo/zc2;->q(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    sget-object v0, Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;->EXTRACT_HTTP_UNAUTHORIZED:Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

    iput-object v0, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->p0:Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/g;->A1()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->q0:Ljava/lang/String;

    goto :goto_0

    :cond_6
    invoke-virtual {p0, p1}, Lcom/snaptube/taskManager/task/video/g;->F1(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    sget-object v0, Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;->EXTRACT_TIMEOUT:Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

    iput-object v0, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->p0:Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

    goto :goto_0

    :cond_7
    invoke-static {p1}, Lo/d58;->b(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lo/zc2;->k(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    sget-object v0, Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;->EXTRACT_MEDIA_UNAVAILABLE:Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

    iput-object v0, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->p0:Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

    iget-object v0, p0, Lo/k08;->b:Landroid/content/Context;

    const v1, 0x7f110630

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->q0:Ljava/lang/String;

    goto :goto_0

    :cond_8
    iget-object p1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    sget-object v0, Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;->UNDEFINED:Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

    iput-object v0, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->p0:Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

    :goto_0
    invoke-virtual {p0}, Lo/k08;->g0()V

    return-void
.end method
