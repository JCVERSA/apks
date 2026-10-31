.method public constructor <init>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Lcom/snaptube/taskManager/TaskMessageCenter$d;-><init>(Landroid/os/Handler;)V

    sget-object v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;->UNKNOWN:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;

    iput-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->b:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;

    return-void
.end method
