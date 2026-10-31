.method public final p(Lcom/snaptube/taskManager/datasets/TaskInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->b:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;

    sget-object v1, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;->MANUALLY:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->x:Z

    iget-object v0, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->w:Ljava/lang/String;

    iput-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->d:Ljava/lang/String;

    invoke-static {}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->C()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a$b;

    invoke-direct {v1, p0, p1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a$b;-><init>(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;Lcom/snaptube/taskManager/datasets/TaskInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
