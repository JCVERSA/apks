.method public final m0(Lnet/pubnative/mediation/request/model/PubnativeAdModel;J)V
    .locals 8

    const/4 v7, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v7, 0x6

    new-instance v6, Lo/mc6;

    move-object v0, v6

    move-object v0, v6

    move-object v1, p1

    move-object v1, p1

    move-wide v4, p2

    const/4 v7, 0x6

    invoke-direct/range {v0 .. v5}, Lo/mc6;-><init>(Lnet/pubnative/mediation/request/model/PubnativeAdModel;JJ)V

    const/4 v7, 0x7

    invoke-static {v6}, Lcom/wandoujia/base/utils/ThreadPool;->a(Ljava/lang/Runnable;)V

    const/4 v7, 0x5

    return-void
.end method
