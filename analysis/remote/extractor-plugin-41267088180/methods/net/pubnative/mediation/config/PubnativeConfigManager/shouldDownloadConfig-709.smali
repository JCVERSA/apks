.method private shouldDownloadConfig()Z
    .locals 5

    iget v0, p0, Lnet/pubnative/mediation/config/PubnativeConfigManager;->continuousFailCount:I

    iget v1, p0, Lnet/pubnative/mediation/config/PubnativeConfigManager;->maxRequestContinuousFailCount:I

    if-lt v0, v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lnet/pubnative/mediation/config/PubnativeConfigManager;->startTime:J

    sub-long/2addr v0, v2

    iget v2, p0, Lnet/pubnative/mediation/config/PubnativeConfigManager;->requestCounterTimeoutMs:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
