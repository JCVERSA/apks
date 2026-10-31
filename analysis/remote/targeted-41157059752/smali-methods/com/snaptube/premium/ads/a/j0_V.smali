.method public final synthetic j0()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.snaptube.premium.ad.analytics.REPORT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/snaptube/premium/ads/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lo/z54;->b(Landroid/content/Context;)Lo/z54;

    move-result-object v1

    iget-object v2, p0, Lcom/snaptube/premium/ads/a;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lo/z54;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lo/z54;->b(Landroid/content/Context;)Lo/z54;

    move-result-object v0

    new-instance v1, Lcom/snaptube/premium/ads/splash/AdClickEventReceiver;

    invoke-direct {v1}, Lcom/snaptube/premium/ads/splash/AdClickEventReceiver;-><init>()V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "event_internal_ad_click"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lo/z54;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "log.apk.downloaded"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "log.apk.installed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "log.apk.start.download"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/snaptube/ads/selfbuild/ApkBroadCastReceiver;

    invoke-direct {v1}, Lcom/snaptube/ads/selfbuild/ApkBroadCastReceiver;-><init>()V

    new-instance v2, Lcom/snaptube/ads/selfbuild/c;

    invoke-direct {v2}, Lcom/snaptube/ads/selfbuild/c;-><init>()V

    invoke-virtual {v1, v2}, Lcom/snaptube/ads/selfbuild/ApkBroadCastReceiver;->a(Lcom/snaptube/ads/selfbuild/ApkBroadCastReceiver$a;)V

    invoke-static {}, Lcom/snaptube/ads/selfbuild/b;->c()Lcom/snaptube/ads/selfbuild/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snaptube/ads/selfbuild/ApkBroadCastReceiver;->a(Lcom/snaptube/ads/selfbuild/ApkBroadCastReceiver$a;)V

    iget-object v2, p0, Lcom/snaptube/premium/ads/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lo/z54;->b(Landroid/content/Context;)Lo/z54;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lo/z54;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method
