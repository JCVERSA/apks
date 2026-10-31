.method public final t0()V
    .locals 2

    const-string v0, "SplashAdManager"

    const-string v1, "onAppForeground ON_START"

    invoke-static {v0, v1}, Lcom/snaptube/util/ProductionEnv;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->e:Z

    sget-object v1, Lcom/snaptube/premium/ads/splash/HotSplashAdManager;->a:Lcom/snaptube/premium/ads/splash/HotSplashAdManager;

    invoke-virtual {v1}, Lcom/snaptube/premium/ads/splash/HotSplashAdManager;->h()V

    iput-boolean v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->f:Z

    invoke-static {}, Lo/r23;->e()V

    sget-boolean v0, Lcom/snaptube/premium/ads/SplashAdManager;->t:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/premium/ads/SplashAdManager;->s0()V

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/snaptube/premium/ClipMonitor/ClipMonitorService;->j(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->g:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->g:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/snaptube/premium/ads/SplashAdManager;->u0()V

    :goto_0
    return-void
.end method
