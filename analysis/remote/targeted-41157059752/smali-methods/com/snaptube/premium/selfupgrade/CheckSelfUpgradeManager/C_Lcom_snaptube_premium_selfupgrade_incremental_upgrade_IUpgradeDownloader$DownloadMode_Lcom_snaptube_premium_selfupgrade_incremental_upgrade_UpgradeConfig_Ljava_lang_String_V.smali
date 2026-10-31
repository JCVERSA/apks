.method public C(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2, p3}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->q(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->h(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;)Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->A(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->D(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a$d;)V

    return-void
.end method
