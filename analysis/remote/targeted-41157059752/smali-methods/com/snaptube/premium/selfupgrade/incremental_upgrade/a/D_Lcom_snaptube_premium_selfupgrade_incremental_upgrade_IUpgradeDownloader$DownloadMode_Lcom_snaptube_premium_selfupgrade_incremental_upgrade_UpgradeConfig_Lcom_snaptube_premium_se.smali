.method public D(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a$d;)V
    .locals 2

    iput-object p2, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->h:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    iget-object v0, p0, Lcom/snaptube/taskManager/TaskMessageCenter$d;->a:Landroid/os/Handler;

    new-instance v1, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a$a;-><init>(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a$d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
