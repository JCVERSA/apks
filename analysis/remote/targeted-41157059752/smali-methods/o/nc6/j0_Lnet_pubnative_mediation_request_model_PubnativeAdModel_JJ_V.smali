.method public static synthetic j0(Lnet/pubnative/mediation/request/model/PubnativeAdModel;JJ)V
    .locals 4

    const/4 v3, 0x2

    invoke-virtual {p0, p1, p2}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->setEndLoadingTime(J)V

    const/4 v3, 0x1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x3

    const-string v2, "nrsieutieqettse_cml"

    const-string v2, "client_request_time"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x6

    sub-long/2addr p1, p3

    const/4 v3, 0x6

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v3, 0x6

    const-string p2, "black_screen_elapsed"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x2

    sget-object p1, Lcom/snaptube/ads_log_v2/AdLogV2Action;->SPLASH_BLACK_SCREEN_END:Lcom/snaptube/ads_log_v2/AdLogV2Action;

    invoke-static {p1}, Lcom/snaptube/ads_log_v2/AdLogV2Event$a;->b(Lcom/snaptube/ads_log_v2/AdLogV2Action;)Lcom/snaptube/ads_log_v2/AdLogV2Event$a;

    move-result-object p1

    new-instance p2, Lnet/pubnative/mediation/request/model/AdLogDataFromAdModel;

    invoke-direct {p2, p0}, Lnet/pubnative/mediation/request/model/AdLogDataFromAdModel;-><init>(Lnet/pubnative/mediation/request/model/PubnativeAdModel;)V

    invoke-virtual {p1, p2}, Lcom/snaptube/ads_log_v2/AdLogV2Event$a;->Q(Lo/w93;)Lcom/snaptube/ads_log_v2/AdLogV2Event$a;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/snaptube/ads_log_v2/AdLogV2Event$a;->x(Ljava/util/Map;)Lcom/snaptube/ads_log_v2/AdLogV2Event$a;

    move-result-object p0

    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/snaptube/ads_log_v2/AdLogV2Event$a;->a()Lcom/snaptube/ads_log_v2/AdLogV2Event;

    move-result-object p0

    const/4 v3, 0x0

    invoke-static {}, Lcom/snaptube/ads_log_v2/b;->g()Lcom/snaptube/ads_log_v2/b;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {p1, p0}, Lcom/snaptube/ads_log_v2/b;->j(Lcom/snaptube/ads_log_v2/AdLogV2Event;)V

    const/4 v3, 0x2

    return-void
.end method
