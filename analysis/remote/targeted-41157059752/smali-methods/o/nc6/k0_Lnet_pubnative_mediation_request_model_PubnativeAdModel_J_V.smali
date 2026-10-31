.method public static synthetic k0(Lnet/pubnative/mediation/request/model/PubnativeAdModel;J)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->setStartLoadingTime(J)V

    const/4 v1, 0x1

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v1, 0x7

    const-string p2, "client_request_time"

    const/4 v1, 0x7

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    sget-object p1, Lcom/snaptube/ads_log_v2/AdLogV2Action;->SPLASH_BLACK_SCREEN_START:Lcom/snaptube/ads_log_v2/AdLogV2Action;

    invoke-static {p1}, Lcom/snaptube/ads_log_v2/AdLogV2Event$a;->b(Lcom/snaptube/ads_log_v2/AdLogV2Action;)Lcom/snaptube/ads_log_v2/AdLogV2Event$a;

    move-result-object p1

    const/4 v1, 0x0

    new-instance p2, Lnet/pubnative/mediation/request/model/AdLogDataFromAdModel;

    const/4 v1, 0x1

    invoke-direct {p2, p0}, Lnet/pubnative/mediation/request/model/AdLogDataFromAdModel;-><init>(Lnet/pubnative/mediation/request/model/PubnativeAdModel;)V

    const/4 v1, 0x5

    invoke-virtual {p1, p2}, Lcom/snaptube/ads_log_v2/AdLogV2Event$a;->Q(Lo/w93;)Lcom/snaptube/ads_log_v2/AdLogV2Event$a;

    move-result-object p0

    const/4 v1, 0x2

    invoke-virtual {p0, v0}, Lcom/snaptube/ads_log_v2/AdLogV2Event$a;->x(Ljava/util/Map;)Lcom/snaptube/ads_log_v2/AdLogV2Event$a;

    move-result-object p0

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/snaptube/ads_log_v2/AdLogV2Event$a;->a()Lcom/snaptube/ads_log_v2/AdLogV2Event;

    move-result-object p0

    invoke-static {}, Lcom/snaptube/ads_log_v2/b;->g()Lcom/snaptube/ads_log_v2/b;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, p0}, Lcom/snaptube/ads_log_v2/b;->j(Lcom/snaptube/ads_log_v2/AdLogV2Event;)V

    const/4 v1, 0x3

    return-void
.end method
