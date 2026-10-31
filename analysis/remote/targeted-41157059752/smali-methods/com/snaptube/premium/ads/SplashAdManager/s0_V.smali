.method public final s0()V
    .locals 9

    invoke-virtual {p0}, Lcom/snaptube/premium/ads/SplashAdManager;->B0()V

    sget-object v0, Lcom/snaptube/premium/app/PhoenixApplication;->E:Lcom/snaptube/premium/log/LaunchLogger;

    const-string v1, "ad_splash_app_foreground"

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/log/LaunchLogger;->J(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/snaptube/premium/ads/SplashAdManager;->z0()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Lcom/snaptube/premium/log/LaunchLogger;->G(Z)V

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/snaptube/premium/guide/launch/LaunchGuideActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v1}, Lcom/snaptube/premium/NavigationManager;->l1(Landroid/content/Context;Landroid/content/Intent;)Z

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->y5()V

    sget-object v0, Lcom/snaptube/ads_log_v2/AdImpressionSceneTrack;->a:Lcom/snaptube/ads_log_v2/AdImpressionSceneTrack;

    sget-boolean v1, Lcom/snaptube/premium/ads/SplashAdManager;->t:Z

    new-instance v2, Lo/ic$b;

    const-string v3, "shown welcome protection"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lo/ic$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/snaptube/ads_log_v2/AdImpressionSceneTrack;->c(ZLo/ic;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/snaptube/premium/configs/Config;->u3()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    sget-object v0, Lcom/snaptube/ads_log_v2/AdImpressionSceneTrack;->a:Lcom/snaptube/ads_log_v2/AdImpressionSceneTrack;

    sget-boolean v1, Lcom/snaptube/premium/ads/SplashAdManager;->t:Z

    new-instance v2, Lo/ic$b;

    const-string v4, "new user protection"

    const-string v5, "isFirstLaunch"

    invoke-direct {v2, v4, v5}, Lo/ic$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/snaptube/ads_log_v2/AdImpressionSceneTrack;->c(ZLo/ic;)V

    sget-object v0, Lcom/snaptube/ads/SplashScreenWrapper;->a:Lcom/snaptube/ads/SplashScreenWrapper;

    const-string v1, "SplashAdManager:isFirstLaunch"

    invoke-virtual {v0, v3, v1}, Lcom/snaptube/ads/SplashScreenWrapper;->i(ZLjava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/snaptube/premium/ads/SplashAdManager;->g:Landroid/os/Handler;

    iget-object v4, p0, Lcom/snaptube/premium/ads/SplashAdManager;->n:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->C()Lcom/snaptube/premium/app/PhoenixApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snaptube/premium/app/PhoenixApplication;->y()Lcom/snaptube/premium/ads/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snaptube/premium/ads/a;->n0()V

    invoke-virtual {p0}, Lcom/snaptube/premium/ads/SplashAdManager;->w0()V

    invoke-virtual {p0}, Lcom/snaptube/premium/ads/SplashAdManager;->f0()Lo/ic;

    move-result-object v1

    sget-object v4, Lo/ic;->c:Lo/ic$a;

    invoke-virtual {v4, v1}, Lo/ic$a;->a(Lo/ic;)Z

    move-result v4

    const-string v5, "SplashAdManager:"

    const/16 v6, 0x448

    if-eqz v4, :cond_4

    :try_start_0
    sget-boolean v1, Lcom/snaptube/premium/ads/SplashAdManager;->t:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/snaptube/premium/ads/SplashAdManager;->y0()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "activity_onCreate"

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/log/LaunchLogger;->q(Ljava/lang/String;)[Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_2

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    :goto_0
    invoke-virtual {v0, v2}, Lcom/snaptube/premium/log/LaunchLogger;->F(Z)V

    const-string v1, "splash_ad_duration"

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/log/LaunchLogger;->I(Ljava/lang/String;)Z

    const-string v1, "ad_splash_ready_to_show_splash_activity"

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/log/LaunchLogger;->J(Ljava/lang/String;)V

    const-string v0, "cold_splash_ads"

    invoke-static {v0}, Lcom/snaptube/premium/log/counter/EventCounterManager;->a(Ljava/lang/String;)Lo/wb3;

    move-result-object v0

    invoke-interface {v0}, Lo/wb3;->b()V

    new-instance v0, Lcom/snaptube/premium/ads/SplashAdManager$c;

    invoke-direct {v0, p0, v7, v8}, Lcom/snaptube/premium/ads/SplashAdManager$c;-><init>(Lcom/snaptube/premium/ads/SplashAdManager;J)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :cond_3
    sget-object v0, Lcom/snaptube/ads_log_v2/AdImpressionSceneTrack;->a:Lcom/snaptube/ads_log_v2/AdImpressionSceneTrack;

    sget-boolean v1, Lcom/snaptube/premium/ads/SplashAdManager;->t:Z

    new-instance v2, Lo/ic$b;

    const-string v4, "disable"

    const-string v7, "push disable"

    invoke-direct {v2, v4, v7}, Lo/ic$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/snaptube/ads_log_v2/AdImpressionSceneTrack;->c(ZLo/ic;)V

    sget-object v0, Lcom/snaptube/ads/SplashScreenWrapper;->a:Lcom/snaptube/ads/SplashScreenWrapper;

    const-string v1, "SplashAdManager:push disable"

    invoke-virtual {v0, v3, v1}, Lcom/snaptube/ads/SplashScreenWrapper;->i(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object v1, Lcom/snaptube/ads_log_v2/AdImpressionSceneTrack;->a:Lcom/snaptube/ads_log_v2/AdImpressionSceneTrack;

    sget-boolean v2, Lcom/snaptube/premium/ads/SplashAdManager;->t:Z

    new-instance v4, Lo/ic$b;

    const-string v7, "exception"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Lo/ic$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v4}, Lcom/snaptube/ads_log_v2/AdImpressionSceneTrack;->c(ZLo/ic;)V

    const-string v1, "StartActivityException"

    invoke-static {v1, v0}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/wandoujia/base/utils/RxBus;->d()Lcom/wandoujia/base/utils/RxBus;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/wandoujia/base/utils/RxBus;->f(I)V

    sget-object v1, Lcom/snaptube/ads/SplashScreenWrapper;->a:Lcom/snaptube/ads/SplashScreenWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/snaptube/ads/SplashScreenWrapper;->i(ZLjava/lang/String;)V

    sput-boolean v3, Lcom/snaptube/premium/ads/SplashAdManager;->t:Z

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/snaptube/ads_log_v2/AdImpressionSceneTrack;->a:Lcom/snaptube/ads_log_v2/AdImpressionSceneTrack;

    sget-boolean v2, Lcom/snaptube/premium/ads/SplashAdManager;->t:Z

    invoke-virtual {v0, v2, v1}, Lcom/snaptube/ads_log_v2/AdImpressionSceneTrack;->c(ZLo/ic;)V

    invoke-static {}, Lcom/wandoujia/base/utils/RxBus;->d()Lcom/wandoujia/base/utils/RxBus;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/wandoujia/base/utils/RxBus;->f(I)V

    sget-object v0, Lcom/snaptube/ads/SplashScreenWrapper;->a:Lcom/snaptube/ads/SplashScreenWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lo/ic;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/snaptube/ads/SplashScreenWrapper;->i(ZLjava/lang/String;)V

    sput-boolean v3, Lcom/snaptube/premium/ads/SplashAdManager;->t:Z

    :goto_2
    return-void
.end method
