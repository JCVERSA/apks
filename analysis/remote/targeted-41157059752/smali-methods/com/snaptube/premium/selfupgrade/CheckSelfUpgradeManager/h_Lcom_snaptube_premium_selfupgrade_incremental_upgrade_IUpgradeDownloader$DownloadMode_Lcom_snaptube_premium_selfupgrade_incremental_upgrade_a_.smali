.method public final h(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;)Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;
    .locals 1

    sget-object v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;->MANUALLY:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;

    if-ne v0, p1, :cond_0

    new-instance p1, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;

    invoke-direct {p1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;-><init>()V

    iput-object p1, p0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->b:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;

    return-object p1

    :cond_0
    new-instance p1, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;

    invoke-direct {p1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;-><init>()V

    iput-object p1, p0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->a:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;

    return-object p1
.end method
