.method public final e0()Lo/ic;
    .locals 5

    iget-object v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/snaptube/premium/ads/SplashAdManager;->l0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->C0()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/snaptube/premium/ads/SplashAdManager;->q:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->C0()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lo/ic$b;

    const-string v2, "in min notification click interval"

    invoke-direct {v1, v2, v0}, Lo/ic$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->F0()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/snaptube/premium/ads/SplashAdManager;->r:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->F0()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lo/ic$b;

    const-string v2, "in min action send interval"

    invoke-direct {v1, v2, v0}, Lo/ic$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_2
    sget-object v0, Lcom/snaptube/premium/ads/SplashAdManager;->x:Ljava/util/Set;

    iget-object v1, p0, Lcom/snaptube/premium/ads/SplashAdManager;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lo/ic$b;

    const-string v1, "in exclude actions"

    iget-object v2, p0, Lcom/snaptube/premium/ads/SplashAdManager;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lo/ic$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_3
    invoke-static {}, Lnet/pubnative/mediation/utils/NewUserProtectionUtils;->isInNewUserProtection()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lo/ic$b;

    const-string v1, "new user protection"

    const-string v2, "InNewUserProtection"

    invoke-direct {v0, v1, v2}, Lo/ic$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_4
    sget-object v0, Lo/ic$c;->d:Lo/ic$c;

    return-object v0

    :cond_5
    :goto_0
    new-instance v0, Lo/ic$b;

    const-string v1, "in exclude activities"

    iget-object v2, p0, Lcom/snaptube/premium/ads/SplashAdManager;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lo/ic$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
