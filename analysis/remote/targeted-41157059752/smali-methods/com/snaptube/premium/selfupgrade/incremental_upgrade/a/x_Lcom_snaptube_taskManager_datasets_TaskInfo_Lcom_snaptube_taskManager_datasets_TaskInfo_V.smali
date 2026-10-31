.method public final x(Lcom/snaptube/taskManager/datasets/TaskInfo;Lcom/snaptube/taskManager/datasets/TaskInfo;)V
    .locals 6

    iget-boolean v0, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->U:Z

    instance-of v1, p2, Lo/cm3;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    check-cast p2, Lo/cm3;

    iget-object v1, p2, Lcom/snaptube/taskManager/datasets/TaskInfo;->i:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    sget-object v4, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;->FINISH:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    if-ne v1, v4, :cond_1

    invoke-virtual {p2}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v0, p1, Lo/cm3;

    if-eqz v0, :cond_0

    check-cast p1, Lo/cm3;

    invoke-virtual {p1}, Lo/cm3;->d0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lo/cm3;->l0(Ljava/lang/String;)V

    invoke-virtual {p1}, Lo/cm3;->b0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lo/cm3;->k0(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->r(Lcom/snaptube/taskManager/datasets/TaskInfo;)V

    :cond_0
    invoke-virtual {p0, v2, p2}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->w(ZLo/cm3;)V

    return-void

    :cond_1
    iget-boolean v1, p2, Lcom/snaptube/taskManager/datasets/TaskInfo;->x:Z

    if-nez v1, :cond_2

    iget-boolean v1, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->x:Z

    if-eqz v1, :cond_2

    iget-wide v4, p2, Lcom/snaptube/taskManager/datasets/TaskInfo;->a:J

    invoke-static {v4, v5, v2}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->x(JZ)V

    :cond_2
    iget-object v1, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->b:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;

    sget-object v4, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;->MANUALLY:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;

    if-ne v1, v4, :cond_7

    iget-boolean v1, p2, Lcom/snaptube/taskManager/datasets/TaskInfo;->x:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->j:Z

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, p2, Lcom/snaptube/taskManager/datasets/TaskInfo;->i:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    sget-object v4, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;->RUNNING:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    if-eq v1, v4, :cond_4

    sget-object v4, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;->PENDING:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    if-ne v1, v4, :cond_7

    :cond_4
    iget-wide p1, p2, Lcom/snaptube/taskManager/datasets/TaskInfo;->a:J

    sget-object v0, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;->PAUSED:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    invoke-static {p1, p2, v0}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->v(JLcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;)V

    return-void

    :cond_5
    iget-boolean v1, p2, Lcom/snaptube/taskManager/datasets/TaskInfo;->S:Z

    if-eqz v1, :cond_7

    iget-wide v4, p2, Lcom/snaptube/taskManager/datasets/TaskInfo;->a:J

    sget-object v1, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;->DELETED:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    invoke-static {v4, v5, v1}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->v(JLcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;)V

    goto :goto_0

    :cond_6
    move-object p2, v3

    :cond_7
    :goto_0
    iget-object v1, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->b:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;

    sget-object v4, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;->AUTOMATIC:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;

    if-ne v1, v4, :cond_d

    invoke-virtual {p0, v0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->C(Z)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_b

    if-nez p2, :cond_8

    instance-of v0, p1, Lo/cm3;

    if-eqz v0, :cond_8

    move-object p2, p1

    check-cast p2, Lo/cm3;

    goto :goto_1

    :cond_8
    if-nez p2, :cond_9

    new-instance p2, Lo/cm3;

    invoke-direct {p2}, Lo/cm3;-><init>()V

    iget-object p1, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->v:Ljava/lang/String;

    iput-object p1, p2, Lcom/snaptube/taskManager/datasets/TaskInfo;->v:Ljava/lang/String;

    :cond_9
    :goto_1
    invoke-static {}, Lo/x87;->i()Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "IsNotWifi"

    goto :goto_2

    :cond_a
    const-string p1, "ConfigNotAllow"

    :goto_2
    invoke-static {p2, p1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->l(Lo/cm3;Ljava/lang/String;)V

    invoke-virtual {p0, v4, v3}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->w(ZLo/cm3;)V

    return-void

    :cond_b
    invoke-virtual {p0, v0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->u(Z)Z

    move-result v0

    iput-boolean v0, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->S:Z

    if-eqz p2, :cond_d

    iget-object v0, p2, Lcom/snaptube/taskManager/datasets/TaskInfo;->i:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    sget-object v1, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;->ERROR:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    if-ne v0, v1, :cond_d

    sget v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->m:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_c

    const-string p1, "retry_time_more_than_four_times"

    invoke-static {p2, p1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->l(Lo/cm3;Ljava/lang/String;)V

    invoke-virtual {p0, v4, v3}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->w(ZLo/cm3;)V

    return-void

    :cond_c
    add-int/2addr v0, v2

    sput v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->m:I

    :cond_d
    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->K()Lcom/snaptube/taskManager/TaskMessageCenter;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/snaptube/taskManager/TaskMessageCenter;->x(Lcom/snaptube/taskManager/TaskMessageCenter$d;)V

    invoke-static {p1, v3}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->l(Lcom/snaptube/taskManager/datasets/TaskInfo;Lcom/snaptube/extractor/pluginlib/models/Format;)V

    return-void
.end method
