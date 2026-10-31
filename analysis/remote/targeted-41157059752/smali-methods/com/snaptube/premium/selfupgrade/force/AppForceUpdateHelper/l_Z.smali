.method public final l()Z
    .locals 7

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->Z1()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->I()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v2

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
