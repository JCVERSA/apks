.method public static g(ZLjava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;->AUTOMATIC:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2, p1}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->o(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;ZLandroid/content/Context;ZLjava/lang/String;)V

    return-void
.end method
