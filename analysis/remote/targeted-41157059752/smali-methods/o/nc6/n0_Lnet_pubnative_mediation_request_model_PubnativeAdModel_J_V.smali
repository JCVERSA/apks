.method public final n0(Lnet/pubnative/mediation/request/model/PubnativeAdModel;J)V
    .locals 2

    const/4 v1, 0x6

    new-instance v0, Lo/lc6;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3}, Lo/lc6;-><init>(Lnet/pubnative/mediation/request/model/PubnativeAdModel;J)V

    const/4 v1, 0x6

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->a(Ljava/lang/Runnable;)V

    const/4 v1, 0x4

    return-void
.end method
