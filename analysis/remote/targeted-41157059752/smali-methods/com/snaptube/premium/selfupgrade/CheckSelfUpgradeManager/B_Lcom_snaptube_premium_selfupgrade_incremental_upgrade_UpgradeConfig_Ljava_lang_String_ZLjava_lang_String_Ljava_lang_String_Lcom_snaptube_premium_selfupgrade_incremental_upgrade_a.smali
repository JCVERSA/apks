.method public B(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;
    .locals 2

    invoke-static {p1, p2}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->q(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Ljava/lang/String;)V

    sget-object v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;->MANUALLY:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;

    invoke-virtual {p0, v0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->h(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;)Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->A(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->y(Z)V

    invoke-virtual {v1, p4}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->z(Ljava/lang/String;)V

    invoke-virtual {v1, p5}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->B(Ljava/lang/String;)V

    invoke-virtual {v1, v0, p1, p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->D(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a$d;)V

    return-object v1
.end method
