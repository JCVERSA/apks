.method public v(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;)V
    .locals 2

    sget-object v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;->MANUALLY:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    iput-object v1, p0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->b:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->a:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;

    :goto_0
    return-void
.end method
