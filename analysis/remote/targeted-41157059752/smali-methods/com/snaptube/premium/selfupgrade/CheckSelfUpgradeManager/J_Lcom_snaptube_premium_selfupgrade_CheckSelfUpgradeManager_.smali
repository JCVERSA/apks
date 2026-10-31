.method public static J()Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;
    .locals 2

    const-class v0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->d:Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;

    invoke-direct {v1}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;-><init>()V

    sput-object v1, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->d:Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->d:Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
