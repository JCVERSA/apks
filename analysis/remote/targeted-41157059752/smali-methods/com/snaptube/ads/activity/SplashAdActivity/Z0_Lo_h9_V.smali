.method public static synthetic Z0(Lo/h9;)V
    .locals 5

    iget-object p0, p0, Lo/h9;->c:Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    check-cast p0, Lnet/pubnative/mediation/adapter/model/SnaptubeNativeAdModel;

    invoke-virtual {p0}, Lnet/pubnative/mediation/adapter/model/SnaptubeNativeAdModel;->getWaitTimeStart()J

    move-result-wide v0

    sget-object v2, Lcom/snaptube/ads_log_v2/AdLogV2Action;->AD_SKIP_LOADING:Lcom/snaptube/ads_log_v2/AdLogV2Action;

    invoke-static {v2}, Lcom/snaptube/ads_log_v2/AdLogV2Event$a;->b(Lcom/snaptube/ads_log_v2/AdLogV2Action;)Lcom/snaptube/ads_log_v2/AdLogV2Event$a;

    move-result-object v2

    new-instance v3, Lnet/pubnative/mediation/request/model/AdLogDataFromAdModel;

    invoke-direct {v3, p0}, Lnet/pubnative/mediation/request/model/AdLogDataFromAdModel;-><init>(Lnet/pubnative/mediation/request/model/PubnativeAdModel;)V

    invoke-virtual {v2, v3}, Lcom/snaptube/ads_log_v2/AdLogV2Event$a;->Q(Lo/w93;)Lcom/snaptube/ads_log_v2/AdLogV2Event$a;

    move-result-object p0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "wait_time"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/snaptube/ads_log_v2/AdLogV2Event$a;->x(Ljava/util/Map;)Lcom/snaptube/ads_log_v2/AdLogV2Event$a;

    invoke-virtual {p0}, Lcom/snaptube/ads_log_v2/AdLogV2Event$a;->a()Lcom/snaptube/ads_log_v2/AdLogV2Event;

    move-result-object p0

    invoke-static {}, Lcom/snaptube/ads_log_v2/b;->g()Lcom/snaptube/ads_log_v2/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snaptube/ads_log_v2/b;->j(Lcom/snaptube/ads_log_v2/AdLogV2Event;)V

    return-void
.end method
