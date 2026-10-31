.method public final o0()Z
    .locals 7

    iget-wide v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->i:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-gtz v5, :cond_0

    return v4

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/snaptube/premium/ads/SplashAdManager;->i:J

    sub-long/2addr v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v3, Lcom/snaptube/ads/base/AdsPos;->HOT_SPLASH:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v3}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lo/od;->g(Ljava/lang/String;)I

    move-result v3

    int-to-long v5, v3

    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    cmp-long v5, v0, v2

    if-gtz v5, :cond_1

    const/4 v4, 0x1

    :cond_1
    return v4
.end method
