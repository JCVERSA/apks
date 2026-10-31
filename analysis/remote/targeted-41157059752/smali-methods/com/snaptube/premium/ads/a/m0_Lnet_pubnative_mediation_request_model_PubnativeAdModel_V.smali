.method public final m0(Lnet/pubnative/mediation/request/model/PubnativeAdModel;)V
    .locals 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    new-instance v2, Lcom/snaptube/premium/ads/a$b;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/snaptube/premium/ads/a$b;-><init>(Lcom/snaptube/premium/ads/a;Lnet/pubnative/mediation/request/model/PubnativeAdModel;J)V

    invoke-static {v2}, Lcom/wandoujia/base/utils/ThreadPool;->a(Ljava/lang/Runnable;)V

    return-void
.end method
