.method public final r0()V
    .locals 11

    const-string v0, "SplashAdManager"

    const-string v1, "onAppBackground ON_STOP"

    invoke-static {v0, v1}, Lcom/snaptube/util/ProductionEnv;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/snaptube/premium/ads/splash/HotSplashAdManager;->a:Lcom/snaptube/premium/ads/splash/HotSplashAdManager;

    invoke-virtual {v0}, Lcom/snaptube/premium/ads/splash/HotSplashAdManager;->f()V

    invoke-static {}, Lcom/snaptube/ads/selfbuild/tracking/SnaptubeTrackingManager;->m()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->e:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/snaptube/premium/ads/SplashAdManager;->m:J

    sget-object v1, Lcom/snaptube/ads/base/AdsPos;->INTERSTITIAL_LAUNCH:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v1}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/iq7;->c(Ljava/lang/String;)Lo/iq7$b;

    move-result-object v1

    iget-object v2, p0, Lcom/snaptube/premium/ads/SplashAdManager;->g:Landroid/os/Handler;

    iget-object v3, p0, Lcom/snaptube/premium/ads/SplashAdManager;->n:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/snaptube/premium/ads/SplashAdManager;->g:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->g:Landroid/os/Handler;

    iget-object v2, p0, Lcom/snaptube/premium/ads/SplashAdManager;->n:Ljava/lang/Runnable;

    iget v3, v1, Lo/iq7$b;->i:I

    int-to-long v3, v3

    iget v1, v1, Lo/iq7$b;->h:I

    int-to-long v5, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sget-wide v9, Lo/m01;->n:J

    sub-long/2addr v7, v9

    sub-long/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
