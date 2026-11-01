.method public W(Lcom/phoenix/download/DownloadInfo;)V
    .locals 9

    invoke-interface {p1}, Lcom/phoenix/download/DownloadInfo;->getStatus()Lcom/phoenix/download/DownloadInfo$Status;

    move-result-object v0

    sget-object v1, Lcom/phoenix/download/DownloadInfo$Status;->SUCCESS:Lcom/phoenix/download/DownloadInfo$Status;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, v2}, Lo/du1;->K0(Lcom/phoenix/download/DownloadInfo;Z)V

    iget-object p1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    const-wide/16 v0, -0x1

    iput-wide v0, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->u:J

    invoke-virtual {p0}, Lo/du1;->F0()V

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-interface {p1}, Lcom/phoenix/download/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/phoenix/download/DownloadInfo;->i()J

    move-result-wide v3

    invoke-interface {p1}, Lcom/phoenix/download/DownloadInfo;->e()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v0}, Lo/cu1;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lcom/phoenix/download/b;->e(Ljava/lang/String;J)Z

    move-result v0

    invoke-interface {p1}, Lcom/phoenix/download/DownloadInfo;->getStatus()Lcom/phoenix/download/DownloadInfo$Status;

    move-result-object v1

    sget-object v5, Lcom/phoenix/download/DownloadInfo$Status;->DOWNLOADING:Lcom/phoenix/download/DownloadInfo$Status;

    if-ne v1, v5, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    invoke-static {p1, v0}, Lcom/phoenix/download/b;->b(Lcom/phoenix/download/DownloadInfo;Z)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lo/k08;->m0(Ljava/lang/String;Z)I

    :cond_2
    invoke-interface {p1}, Lcom/phoenix/download/DownloadInfo;->getStatus()Lcom/phoenix/download/DownloadInfo$Status;

    move-result-object v1

    sget-object v2, Lcom/phoenix/download/DownloadInfo$Status;->FAILED:Lcom/phoenix/download/DownloadInfo$Status;

    if-ne v1, v2, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/phoenix/download/DownloadInfo;->d()Lcom/wandoujia/download/rpc/h;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {p1}, Lcom/phoenix/download/DownloadInfo;->d()Lcom/wandoujia/download/rpc/h;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wandoujia/download/rpc/h;->d()I

    move-result v6

    const-string v7, "status code is "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v7, 0x1e6

    if-ne v7, v6, :cond_4

    const-string v7, ", filePath is "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/wandoujia/download/rpc/h;->m:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", uri is "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/wandoujia/download/rpc/h;->b:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", totalBytes is "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v5, Lcom/wandoujia/download/rpc/h;->f:J

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/wandoujia/download/rpc/h;->m:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, ", filePath length is "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/io/File;

    iget-object v5, v5, Lcom/wandoujia/download/rpc/h;->m:Ljava/lang/String;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :cond_4
    :goto_1
    invoke-static {v3, v4}, Lo/ca8;->f(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/phoenix/download/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lo/ca8;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_6

    invoke-static {}, Lo/bu1;->d()V

    iget-boolean v0, p0, Lo/du1;->m:Z

    if-nez v0, :cond_5

    invoke-virtual {p0, v3, v4}, Lo/du1;->G0(J)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_5
    sget-object v0, Lcom/snaptube/taskManager/task/TaskError;->NO_ENOUGH_SPACE:Lcom/snaptube/taskManager/task/TaskError;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v1, v6}, Lo/k08;->z(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1}, Lcom/phoenix/download/DownloadInfo;->d()Lcom/wandoujia/download/rpc/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wandoujia/download/rpc/h;->d()I

    move-result p1

    invoke-static {p1}, Lo/zr7;->b(I)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/zy8;->e(Landroid/content/Context;)V

    goto :goto_2

    :cond_6
    sget-object p1, Lcom/snaptube/taskManager/task/TaskError;->DOWNLOAD_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1, v6}, Lo/k08;->z(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    :cond_7
    invoke-interface {p1}, Lcom/phoenix/download/DownloadInfo;->d()Lcom/wandoujia/download/rpc/h;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Lcom/phoenix/download/DownloadInfo;->d()Lcom/wandoujia/download/rpc/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wandoujia/download/rpc/h;->d()I

    move-result p1

    const/16 v0, 0xbbb

    if-ne p1, v0, :cond_8

    sget-object p1, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;->PENDING:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    invoke-virtual {p0, p1}, Lo/k08;->o0(Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;)I

    :cond_8
    :goto_2
    return-void
.end method
