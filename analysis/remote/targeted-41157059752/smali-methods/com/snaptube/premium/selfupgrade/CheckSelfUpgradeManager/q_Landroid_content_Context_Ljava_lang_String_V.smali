.method public static q(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->j0(Landroid/content/Context;)V

    sget-object v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;->MANUALLY:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;

    const/4 v1, 0x1

    invoke-static {v0, v1, p0, v1, p1}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->o(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;ZLandroid/content/Context;ZLjava/lang/String;)V

    return-void
.end method
