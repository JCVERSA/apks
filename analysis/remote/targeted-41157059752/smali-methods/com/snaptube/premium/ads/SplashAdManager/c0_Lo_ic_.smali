.method public final c0()Lo/ic;
    .locals 5

    iget-object v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->j:Lo/ba3;

    invoke-interface {v0}, Lo/ba3;->h()Z

    move-result v0

    const-string v1, "disable"

    if-nez v0, :cond_0

    new-instance v0, Lo/ic$b;

    const-string v2, "isGlobalDisable"

    invoke-direct {v0, v1, v2}, Lo/ic$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/snaptube/premium/ads/SplashAdManager;->e0()Lo/ic;

    move-result-object v0

    sget-object v2, Lo/ic;->c:Lo/ic$a;

    invoke-virtual {v2, v0}, Lo/ic$a;->a(Lo/ic;)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v0

    :cond_1
    iget-boolean v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->c:Z

    if-eqz v0, :cond_2

    new-instance v0, Lo/ic$b;

    const-string v1, "in exclude activities"

    const-string v2, "isExcludeLaunchAd"

    invoke-direct {v0, v1, v2}, Lo/ic$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    invoke-static {}, Lcom/snaptube/premium/ads/splash/HotSplashAdManager;->e()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lo/ic$b;

    const-string v2, "isConfigDisable"

    invoke-direct {v0, v1, v2}, Lo/ic$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_3
    sget-object v0, Lcom/snaptube/ads/base/AdsPos;->HOT_SPLASH:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v0}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lo/od;->v(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v0, Lo/ic$b;

    const-string v2, "isAdPosDisable"

    invoke-direct {v0, v1, v2}, Lo/ic$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_4
    sget-object v1, Lcom/snaptube/ad/frequency/FrequencyControlManager;->a:Lcom/snaptube/ad/frequency/FrequencyControlManager;

    invoke-virtual {v0}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/snaptube/premium/ads/SplashAdManager;->a0()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/snaptube/ad/frequency/FrequencyControlManager;->b(Ljava/lang/String;Landroid/os/Bundle;)Lo/ic;

    move-result-object v1

    invoke-virtual {v2, v1}, Lo/ic$a;->a(Lo/ic;)Z

    move-result v2

    if-nez v2, :cond_5

    return-object v1

    :cond_5
    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/fc1;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/sn;

    invoke-interface {v1}, Lo/sn;->L()Lo/ne3;

    move-result-object v1

    invoke-virtual {v0}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lo/x93;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/snaptube/premium/ads/SplashAdManager;->m:J

    sub-long/2addr v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_6

    new-instance v0, Lo/ic$b;

    const-string v1, "no cache"

    const-string v2, "moreThanOneHour"

    invoke-direct {v0, v1, v2}, Lo/ic$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_6
    sget-object v0, Lo/ic$c;->d:Lo/ic$c;

    return-object v0
.end method
