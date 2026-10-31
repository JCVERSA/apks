.method public final declared-synchronized w(ZLo/cm3;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->K()Lcom/snaptube/taskManager/TaskMessageCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snaptube/taskManager/TaskMessageCenter;->y(Lcom/snaptube/taskManager/TaskMessageCenter$d;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->d:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->e:J

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->b:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;

    sget-object v1, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;->UNKNOWN:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;

    iput-object v1, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->b:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->f:I

    invoke-static {v1, p1, v2}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->T(Ljava/lang/String;ZI)V

    iget-object v1, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->g:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a$d;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/io/File;

    invoke-virtual {p2}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    const/4 v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->i:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->i:Ljava/lang/String;

    iput-object p1, p2, Lcom/snaptube/taskManager/datasets/TaskInfo;->V:Ljava/lang/String;

    :cond_1
    iget-object v2, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->g:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a$d;

    iget-object v5, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->c:Ljava/lang/String;

    iget-object v7, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->h:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    move-object v4, v0

    move-object v6, p2

    invoke-interface/range {v2 .. v7}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a$d;->a(ZLcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;Ljava/lang/String;Lo/cm3;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)V

    :cond_2
    invoke-static {}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->J()Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->v(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
