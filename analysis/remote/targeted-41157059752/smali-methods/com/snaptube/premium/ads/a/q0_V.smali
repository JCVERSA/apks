.method public q0()V
    .locals 3

    sget-object v0, Lcom/snaptube/ad/tracker/TrackManager;->a:Lcom/snaptube/ad/tracker/TrackManager;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lo/ca;->a:Lo/ca;

    new-instance v1, Lcom/snaptube/ads/base/network/DoHEnabledAdNetworkConfig;

    iget-object v2, p0, Lcom/snaptube/premium/ads/a;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/snaptube/ads/base/network/DoHEnabledAdNetworkConfig;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lo/ca;->c(Lo/ba;)V

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lo/cj0;->k(Landroid/content/Context;)Lo/cj0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/cj0;->f(Lo/cj0$d;)V

    :cond_0
    invoke-virtual {p0}, Lcom/snaptube/premium/ads/a;->o0()V

    invoke-virtual {p0}, Lcom/snaptube/premium/ads/a;->r0()V

    invoke-static {}, Lcom/snaptube/ads_log_v2/b;->g()Lcom/snaptube/ads_log_v2/b;

    invoke-static {}, Lo/s7;->y()Lo/s7;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/s7;->B(Lo/ca3;)V

    invoke-static {}, Lcom/snaptube/adLog/AdLogDiskCache;->b()Lcom/snaptube/adLog/AdLogDiskCache;

    invoke-static {}, Lcom/snaptube/premium/ads/SplashAdManager;->d0()Lcom/snaptube/premium/ads/SplashAdManager;

    invoke-static {}, Lcom/snaptube/ads_log_v2/AdLogAttributionCache;->j()Lcom/snaptube/ads_log_v2/AdLogAttributionCache;

    move-result-object v0

    sget-object v1, Lcom/snaptube/premium/ads/a;->h:Lcom/snaptube/ads_log_v2/AdLogAttributionCache$c;

    invoke-virtual {v0, v1}, Lcom/snaptube/ads_log_v2/AdLogAttributionCache;->g(Lcom/snaptube/ads_log_v2/AdLogAttributionCache$c;)V

    invoke-static {}, Lcom/snaptube/ads/feedback/AdFeedbackDataManager;->p()Lcom/snaptube/ads/feedback/AdFeedbackDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/premium/ads/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/snaptube/ads/feedback/AdFeedbackDataManager;->t(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/snaptube/premium/ads/a;->e0()V

    sget-object v0, Lcom/snaptube/premium/ads/DownloadedPackageNameCache;->a:Lcom/snaptube/premium/ads/DownloadedPackageNameCache;

    invoke-virtual {v0}, Lcom/snaptube/premium/ads/DownloadedPackageNameCache;->f()V

    return-void
.end method
