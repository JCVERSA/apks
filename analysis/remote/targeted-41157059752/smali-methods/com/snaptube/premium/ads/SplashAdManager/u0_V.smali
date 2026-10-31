.method public final u0()V
    .locals 5

    invoke-virtual {p0}, Lcom/snaptube/premium/ads/SplashAdManager;->c0()Lo/ic;

    move-result-object v0

    sget-object v1, Lo/ic;->c:Lo/ic$a;

    invoke-virtual {v1, v0}, Lo/ic$a;->a(Lo/ic;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "hot_splash_ads"

    invoke-static {v0}, Lcom/snaptube/premium/log/counter/EventCounterManager;->a(Ljava/lang/String;)Lo/wb3;

    move-result-object v0

    invoke-interface {v0}, Lo/wb3;->b()V

    iget-object v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->a:Landroid/app/Application;

    sget-object v1, Lcom/snaptube/ads/base/AdsPos;->HOT_SPLASH:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v1}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/snaptube/premium/ads/SplashAdManager;->g0()Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "hot_launch"

    invoke-static {v0, v3, v4, v1, v2}, Lcom/snaptube/ads/activity/SplashAdActivity;->h1(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/snaptube/ads_log_v2/AdImpressionSceneTrack;->a:Lcom/snaptube/ads_log_v2/AdImpressionSceneTrack;

    sget-object v2, Lcom/snaptube/ads/base/AdsPos;->HOT_SPLASH:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v2}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/snaptube/ads_log_v2/AdImpressionSceneTrack;->a(Ljava/lang/String;Lo/ic;)V

    sget-object v1, Lcom/snaptube/ads/SplashScreenWrapper;->a:Lcom/snaptube/ads/SplashScreenWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SplashAdManager:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lo/ic;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/snaptube/ads/SplashScreenWrapper;->i(ZLjava/lang/String;)V

    :goto_0
    return-void
.end method
