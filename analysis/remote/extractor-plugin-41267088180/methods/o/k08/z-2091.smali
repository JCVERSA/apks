.method public final z(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->O()Lo/dv8;

    move-result-object v0

    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/extractor/BaseVideoUrlExtractor;->y(Ljava/lang/String;)V

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->C:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->C:I

    invoke-virtual {p0, v1}, Lo/k08;->h0(I)I

    sget-object v0, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;->ERROR:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    invoke-virtual {p0, v0}, Lo/k08;->o0(Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;)I

    invoke-virtual {p0}, Lo/k08;->T()V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/yj2;->v(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v2}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wandoujia/download/utils/StorageUtil;->o(Ljava/lang/String;)Z

    move-result v2

    new-instance v3, Lcom/snaptube/premium/log/ReportPropertyBuilder;

    invoke-direct {v3}, Lcom/snaptube/premium/log/ReportPropertyBuilder;-><init>()V

    iget-object v4, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-static {v3, v4}, Lo/k08;->C(Lo/ah3;Lcom/snaptube/taskManager/datasets/TaskInfo;)V

    const-string v4, "Task"

    invoke-interface {v3, v4}, Lo/ah3;->setEventName(Ljava/lang/String;)Lo/ah3;

    move-result-object v4

    const-string v5, "fail"

    invoke-interface {v4, v5}, Lo/ah3;->setAction(Ljava/lang/String;)Lo/ah3;

    move-result-object v4

    invoke-virtual {p1, p2}, Lcom/snaptube/taskManager/task/TaskError;->appendDetails(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "error"

    invoke-interface {v4, v6, v5}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v4

    invoke-virtual {p1}, Lcom/snaptube/taskManager/task/TaskError;->getErrorCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "error_no"

    invoke-interface {v4, v6, v5}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v4

    const-string v5, "dir_exists"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v4

    const-string v5, "removable_disk"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string v4, "arg2"

    invoke-interface {v2, v4, p4}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_1

    const-string p4, "arg3"

    invoke-interface {v3, p4, p3}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lo/yj2;->y(Ljava/lang/String;)J

    move-result-wide p3

    invoke-static {p3, p4}, Lcom/wandoujia/download/utils/StorageUtil;->r(J)J

    move-result-wide v0

    iget-object v2, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v4, v2, Lcom/snaptube/taskManager/datasets/TaskInfo;->d:J

    sub-long/2addr v4, p3

    invoke-static {v4, v5}, Lcom/wandoujia/download/utils/StorageUtil;->r(J)J

    move-result-wide p3

    const-string v2, "free_size"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v2, v0}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    const-string v1, "shortage_size"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, v1, p3}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    :cond_2
    invoke-virtual {p0, v3}, Lo/k08;->O(Lo/ah3;)V

    invoke-static {}, Lo/vq6;->K()Lo/kh3;

    move-result-object p3

    invoke-interface {p3, v3}, Lo/kh3;->g(Lo/ah3;)V

    iget-object p3, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    instance-of p4, p3, Lo/cm3;

    if-eqz p4, :cond_3

    check-cast p3, Lo/cm3;

    invoke-virtual {p1, p2}, Lcom/snaptube/taskManager/task/TaskError;->appendDetails(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->l(Lo/cm3;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
