.method public static d0()Lcom/snaptube/premium/ads/SplashAdManager;
    .locals 3

    sget-object v0, Lcom/snaptube/premium/ads/SplashAdManager;->s:Lcom/snaptube/premium/ads/SplashAdManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/snaptube/premium/ads/SplashAdManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/snaptube/premium/ads/SplashAdManager;->s:Lcom/snaptube/premium/ads/SplashAdManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/snaptube/premium/ads/SplashAdManager;

    invoke-static {}, Lcom/snaptube/base/BaseApplication;->e()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/snaptube/premium/ads/SplashAdManager;-><init>(Landroid/app/Application;)V

    sput-object v1, Lcom/snaptube/premium/ads/SplashAdManager;->s:Lcom/snaptube/premium/ads/SplashAdManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/snaptube/premium/ads/SplashAdManager;->s:Lcom/snaptube/premium/ads/SplashAdManager;

    return-object v0
.end method
